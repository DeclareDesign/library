#' Create a design for cluster random sampling
#'
#' Builds a cluster sampling design for an ordinal outcome variable for a population with \code{N_blocks} strata, each with \code{N_clusters_in_block} clusters, each of which contains \code{N_i_in_cluster} units. The sampling strategy involves sampling \code{n_clusters_in_block} clusters in each stratum, and then sampling \code{n_i_in_cluster} units in each cluster. Outcomes within clusters have intra-cluster correlation approximately equal to \code{ICC}.
#'
#' @details 
#' Key limitations: The design assumes a args_to_fix number of clusters drawn in each stratum and a args_to_fix number of individuals drawn from each cluster.
#' 
#' See \href{https://declaredesign.org/r/designlibrary/articles/cluster_sampling.html}{vignette online}.
#' 
#' @param N_blocks An integer. Number of blocks (strata). Defaults to 1 for no blocks. 
#' @param N_clusters_in_block An integer or vector of integers of length \code{N_blocks}. Number of clusters in each block in the population.
#' @param N_i_in_cluster An integer or vector of integers of length \code{sum(N_clusters_in_block)}. Number of units per cluster sampled.
#' @param n_clusters_in_block An integer. Number of clusters to sample in each block (stratum).
#' @param n_i_in_cluster An integer. Number of units to sample in each cluster.
#' @param icc A number in [0,1]. Intra-cluster Correlation Coefficient (ICC). 
#' @param args_to_fix A character vector. Names of arguments to be args_to_fix in design.
#' @return A stratified cluster sampling design.
#' @author \href{https://declaredesign.org/}{DeclareDesign Team}
#' @concept clusters
#' @concept observational
#' @concept measurement
#' @importFrom DeclareDesign declare_inquiry declare_estimator declare_population declare_sampling
#' @importFrom fabricatr fabricate add_level draw_normal_icc draw_ordered
#' @importFrom randomizr conduct_ra draw_rs 
#' @importFrom estimatr lm_robust
#' @importFrom stats qnorm
#' @export
#' @examples
#' # To make a design using default arguments:
#' cluster_sampling_design <- cluster_sampling_designer()
#' # A design with varying block size and varying cluster size
#' cluster_sampling_design <- cluster_sampling_designer(
#'   N_blocks = 2, N_clusters_in_block = 6:7, N_i_in_cluster = 3:15, 
#'   n_clusters_in_block = 5,  n_i_in_cluster = 2)

cluster_sampling_designer <- function(N_blocks = 1,
                                      N_clusters_in_block = 1000,
                                      N_i_in_cluster = 50,
                                      n_clusters_in_block = 100,
                                      n_i_in_cluster = 10,
                                      icc = 0.2,
                                      args_to_fix = NULL
){
  if(n_clusters_in_block > min(N_clusters_in_block)) stop(paste0("n_clusters_in_block sampled must be smaller than the total number of ", N_clusters_in_block, " clusters."))
  if(n_i_in_cluster > min(N_i_in_cluster)) stop(paste0("n_i_in_cluster must be smaller than or equal to the minimum of ", N_i_in_cluster, " subjects per cluster."))
  if(icc < 0 || icc > 1) stop("icc must be a number in [0,1]")
  {{{
    # M: Model
    fixed_pop <-
      declare_population(
        block = add_level(N = N_blocks),
        cluster = add_level(N = N_clusters_in_block),
        subject = add_level(N = N_i_in_cluster,
                            latent = draw_normal_icc(mean = 0, N = N, clusters = cluster, ICC = icc),
                            Y = draw_ordered(x = latent, breaks = qnorm(seq(0, 1, length.out = 8)))
        )
      )()
    
    population <- declare_population(data = fixed_pop)
    
    # I: Inquiry
    estimand <- declare_inquiry(mean(Y), label = "Ybar")
    
    # D: Data Strategy
    stage_1_sampling <- declare_sampling(
      S1 = strata_and_cluster_rs(strata = block, 
                                 clusters = cluster, n = n_clusters_in_block), filter = S1 == 1)
    
    stage_2_sampling <- declare_sampling(
      S2 = strata_rs(strata = cluster, n = n_i_in_cluster), filter = S2 == 1)
    
    # A: Answer Strategy
    clustered_ses <- declare_estimator(Y ~ 1,
                                       model = lm_robust,
                                       clusters = cluster,
                                       inquiry = estimand,
                                       label = "Clustered Standard Errors")

    # Design
    cluster_sampling_design <- population + estimand +
      stage_1_sampling + stage_2_sampling + clustered_ses
  }}}
  
  attr(cluster_sampling_design, "code") <- 
    construct_design_code(cluster_sampling_designer, args_to_fix = args_to_fix, match.call.defaults())
  
  cluster_sampling_design 
}
attr(cluster_sampling_designer, "definitions") <- data.frame(
  names = c("N_blocks",  "N_clusters_in_block",  "N_i_in_cluster",  
            "n_clusters_in_block",  "n_i_in_cluster",  "icc", "args_to_fix"),
  tips  = c("Number of blocks",
            "Number of clusters in each block",
            "Number of units per cluster sampled",
            "Number of clusters to sample in each block",
            "Number of units to sample in each cluster",
            "Intra-cluster Correlation",
            "Names of arguments to be args_to_fix"),
  class = c(rep("integer", 5), "numeric", "character"),
  vector = c(FALSE, TRUE, TRUE, TRUE, TRUE, FALSE, TRUE),
  min = c(rep(1, 5), 0, NA),
  max = c(rep(Inf, 5), 1, NA),
  inspector_min = c(rep(1,5), 0, NA),
  inspector_step = c(1, 5, 10, 10, 10, 0.2, NA),
  stringsAsFactors = FALSE
)

attr(cluster_sampling_designer, "shiny_arguments") <- list(
  n_clusters_in_block = c(100, seq(10, 30, 10)),
  n_i_in_cluster = seq(10, 40, 10),
  icc = c(0.2, seq(0.002, .999, by = 0.2))
)
attr(cluster_sampling_designer, "description") <- "
<p> A cluster sampling design that samples <code>n_clusters_in_block</code> clusters from each block, each
comprising  <code>n_i_in_cluster</code> units from a population with  <code>N_blocks</code> with
<code>N_clusters_in_block</code> with <code>N_i_in_cluster</code> units each. Outcomes 
are ordinal and exhibit ICC approximately equal to <code>ICC</code>. 
"

