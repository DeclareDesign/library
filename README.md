DesignLibrary: A Library of Common Research Designs
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Coverage
Status](https://coveralls.io/repos/github/DeclareDesign/DesignLibrary/badge.svg?branch=master)](https://coveralls.io/github/DeclareDesign/DesignLibrary?branch=master)
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/DesignLibrary)](https://cran.r-project.org/package=DesignLibrary)
[![minimal R
version](https://img.shields.io/badge/R%3E%3D-3.4.0-6666ff.svg)](https://cran.r-project.org/)
[![packageversion](https://img.shields.io/badge/Package%20version-0.1.5.9999-orange.svg?style=flat-square)](commits/master)

**DesignLibrary** provides simple interface to build designs using the
package **DeclareDesign**. In one line of code users can specify the
parameters of individual designs and diagnose their properties. The
designers can also be used to compare performance of a given design
across a range of combinations of parameters, such as effect size,
sample size, assignment probabilities and more.

[Check out the online version of the library
here](https://declaredesign.org/library/).

-----

## Designs

<table id="design_library_list" class="table table-striped">

<thead>

<tr>

<th>

Design

</th>

<th>

Vignette

</th>

<th>

Designer

</th>

<th>

Design Inspector

</th>

<th>

Contributor

</th>

<th>

Keywords

</th>

</tr>

</thead>

<tbody>

<tr>

<td>

Block Cluster Two Arm Design

</td>

<td class="text-center">

<a href="/library/articles/block_cluster_two_arm.html" data-toggle="tooltip" title="Read description of design"><span class="fab fa-readme fa-lg"></span></a>

</td>

<td class="text-center">

<a href="/library/reference/block_cluster_two_arm_designer.html" data-toggle="tooltip" title="Open designer function documentation"><span class="fas fa-pencil-alt fa-lg"></span></a>

</td>

<td class="text-center">

<a href="https://eos.wzb.eu/ipi/DDinspector/?import_library=block_cluster_two_arm" data-toggle="tooltip" title="Go to design inspector"><span class="fas fa-info-circle fa-lg"></span></a>

</td>

<td>

<a href="https://declaredesign.org/about/">DeclareDesign</a>

</td>

<td>

blocking, experiment

</td>

</tr>

<tr>

<td>

Cluster Sampling Design

</td>

<td class="text-center">

<a href="/library/articles/cluster_sampling.html" data-toggle="tooltip" title="Read description of design"><span class="fab fa-readme fa-lg"></span></a>

</td>

<td class="text-center">

<a href="/library/reference/cluster_sampling_designer.html" data-toggle="tooltip" title="Open designer function documentation"><span class="fas fa-pencil-alt fa-lg"></span></a>

</td>

<td class="text-center">

<a href="https://eos.wzb.eu/ipi/DDinspector/?import_library=cluster_sampling" data-toggle="tooltip" title="Go to design inspector"><span class="fas fa-info-circle fa-lg"></span></a>

</td>

<td>

<a href="https://declaredesign.org/about/">DeclareDesign</a>

</td>

<td>

clusters, measurement, observational

</td>

</tr>

<tr>

<td>

Factorial Design

</td>

<td class="text-center">

<a href="/library/articles/factorial.html" data-toggle="tooltip" title="Read description of design"><span class="fab fa-readme fa-lg"></span></a>

</td>

<td class="text-center">

<a href="/library/reference/factorial_designer.html" data-toggle="tooltip" title="Open designer function documentation"><span class="fas fa-pencil-alt fa-lg"></span></a>

</td>

<td class="text-center">

<a href="https://eos.wzb.eu/ipi/DDinspector/?import_library=factorial" data-toggle="tooltip" title="Go to design inspector"><span class="fas fa-info-circle fa-lg"></span></a>

</td>

<td>

<a href="https://declaredesign.org/about/">DeclareDesign</a>

</td>

<td>

factorial

</td>

</tr>

<tr>

<td>

Mediation Analysis Design

</td>

<td class="text-center">

<a href="/library/articles/mediation_analysis.html" data-toggle="tooltip" title="Read description of design"><span class="fab fa-readme fa-lg"></span></a>

</td>

<td class="text-center">

<a href="/library/reference/mediation_analysis_designer.html" data-toggle="tooltip" title="Open designer function documentation"><span class="fas fa-pencil-alt fa-lg"></span></a>

</td>

<td class="text-center">

<a href="https://eos.wzb.eu/ipi/DDinspector/?import_library=mediation_analysis" data-toggle="tooltip" title="Go to design inspector"><span class="fas fa-info-circle fa-lg"></span></a>

</td>

<td>

<a href="https://declaredesign.org/about/">DeclareDesign</a>

</td>

<td>

experiment, mediation

</td>

</tr>

<tr>

<td>

Multi Arm Design

</td>

<td class="text-center">

<a href="/library/articles/multi_arm.html" data-toggle="tooltip" title="Read description of design"><span class="fab fa-readme fa-lg"></span></a>

</td>

<td class="text-center">

<a href="/library/reference/multi_arm_designer.html" data-toggle="tooltip" title="Open designer function documentation"><span class="fas fa-pencil-alt fa-lg"></span></a>

</td>

<td class="text-center">

<a href="https://eos.wzb.eu/ipi/DDinspector/?import_library=multi_arm" data-toggle="tooltip" title="Go to design inspector"><span class="fas fa-info-circle fa-lg"></span></a>

</td>

<td>

<a href="https://declaredesign.org/about/">DeclareDesign</a>

</td>

<td>

experiment, multiarm trial

</td>

</tr>

<tr>

<td>

Pretest Posttest Design

</td>

<td class="text-center">

<a href="/library/articles/pretest_posttest.html" data-toggle="tooltip" title="Read description of design"><span class="fab fa-readme fa-lg"></span></a>

</td>

<td class="text-center">

<a href="/library/reference/pretest_posttest_designer.html" data-toggle="tooltip" title="Open designer function documentation"><span class="fas fa-pencil-alt fa-lg"></span></a>

</td>

<td class="text-center">

<a href="https://eos.wzb.eu/ipi/DDinspector/?import_library=pretest_posttest" data-toggle="tooltip" title="Go to design inspector"><span class="fas fa-info-circle fa-lg"></span></a>

</td>

<td>

<a href="https://declaredesign.org/about/">DeclareDesign</a>

</td>

<td>

baseline, difference-in-differences, experiment

</td>

</tr>

<tr>

<td>

Randomized Response Design

</td>

<td class="text-center">

<a href="/library/articles/randomized_response.html" data-toggle="tooltip" title="Read description of design"><span class="fab fa-readme fa-lg"></span></a>

</td>

<td class="text-center">

<a href="/library/reference/randomized_response_designer.html" data-toggle="tooltip" title="Open designer function documentation"><span class="fas fa-pencil-alt fa-lg"></span></a>

</td>

<td class="text-center">

<a href="https://eos.wzb.eu/ipi/DDinspector/?import_library=randomized_response" data-toggle="tooltip" title="Go to design inspector"><span class="fas fa-info-circle fa-lg"></span></a>

</td>

<td>

<a href="https://declaredesign.org/about/">DeclareDesign</a>

</td>

<td>

descriptive, experiment

</td>

</tr>

<tr>

<td>

Regression Discontinuity Design

</td>

<td class="text-center">

<a href="/library/articles/regression_discontinuity.html" data-toggle="tooltip" title="Read description of design"><span class="fab fa-readme fa-lg"></span></a>

</td>

<td class="text-center">

<a href="/library/reference/regression_discontinuity_designer.html" data-toggle="tooltip" title="Open designer function documentation"><span class="fas fa-pencil-alt fa-lg"></span></a>

</td>

<td class="text-center">

<a href="https://eos.wzb.eu/ipi/DDinspector/?import_library=regression_discontinuity" data-toggle="tooltip" title="Go to design inspector"><span class="fas fa-info-circle fa-lg"></span></a>

</td>

<td>

<a href="https://declaredesign.org/about/">DeclareDesign</a>

</td>

<td>

observational, regression discontinuity

</td>

</tr>

<tr>

<td>

Spillover Design

</td>

<td class="text-center">

<a href="/library/articles/spillover.html" data-toggle="tooltip" title="Read description of design"><span class="fab fa-readme fa-lg"></span></a>

</td>

<td class="text-center">

<a href="/library/reference/spillover_designer.html" data-toggle="tooltip" title="Open designer function documentation"><span class="fas fa-pencil-alt fa-lg"></span></a>

</td>

<td class="text-center">

<a href="https://eos.wzb.eu/ipi/DDinspector/?import_library=spillover" data-toggle="tooltip" title="Go to design inspector"><span class="fas fa-info-circle fa-lg"></span></a>

</td>

<td>

<a href="https://declaredesign.org/about/">DeclareDesign</a>

</td>

<td>

experiment, spillovers

</td>

</tr>

<tr>

<td>

Two Arm Design

</td>

<td class="text-center">

<a href="/library/articles/two_arm.html" data-toggle="tooltip" title="Read description of design"><span class="fab fa-readme fa-lg"></span></a>

</td>

<td class="text-center">

<a href="/library/reference/two_arm_designer.html" data-toggle="tooltip" title="Open designer function documentation"><span class="fas fa-pencil-alt fa-lg"></span></a>

</td>

<td class="text-center">

<a href="https://eos.wzb.eu/ipi/DDinspector/?import_library=two_arm" data-toggle="tooltip" title="Go to design inspector"><span class="fas fa-info-circle fa-lg"></span></a>

</td>

<td>

<a href="https://declaredesign.org/about/">DeclareDesign</a>

</td>

<td>

experiment

</td>

</tr>

<tr>

<td>

Two by Two Design

</td>

<td class="text-center">

<a href="/library/articles/two_by_two.html" data-toggle="tooltip" title="Read description of design"><span class="fab fa-readme fa-lg"></span></a>

</td>

<td class="text-center">

<a href="/library/reference/two_by_two_designer.html" data-toggle="tooltip" title="Open designer function documentation"><span class="fas fa-pencil-alt fa-lg"></span></a>

</td>

<td class="text-center">

<a href="https://eos.wzb.eu/ipi/DDinspector/?import_library=two_by_two" data-toggle="tooltip" title="Go to design inspector"><span class="fas fa-info-circle fa-lg"></span></a>

</td>

<td>

<a href="https://declaredesign.org/about/">DeclareDesign</a>

</td>

<td>

experiment factorial

</td>

</tr>

<tr>

<td>

Two Arm Attrition Design

</td>

<td class="text-center">

<a href="/library/articles/two_arm_attrition.html" data-toggle="tooltip" title="Read description of design"><span class="fab fa-readme fa-lg"></span></a>

</td>

<td class="text-center">

<a href="/library/reference/two_arm_attrition_designer.html" data-toggle="tooltip" title="Open designer function documentation"><span class="fas fa-pencil-alt fa-lg"></span></a>

</td>

<td>

</td>

<td>

<a href="https://declaredesign.org/about/">DeclareDesign</a>

</td>

<td>

post-treatment

</td>

</tr>

<tr>

<td>

Process Tracing Design

</td>

<td class="text-center">

<a href="/library/articles/process_tracing.html" data-toggle="tooltip" title="Read description of design"><span class="fab fa-readme fa-lg"></span></a>

</td>

<td class="text-center">

<a href="/library/reference/process_tracing_designer.html" data-toggle="tooltip" title="Open designer function documentation"><span class="fas fa-pencil-alt fa-lg"></span></a>

</td>

<td class="text-center">

<a href="https://eos.wzb.eu/ipi/DDinspector/?import_library=process_tracing" data-toggle="tooltip" title="Go to design inspector"><span class="fas fa-info-circle fa-lg"></span></a>

</td>

<td>

<a href="https://declaredesign.org/about/">DeclareDesign</a>

</td>

<td>

process tracing, qualitative

</td>

</tr>

<tr>

<td>

Binary IV Design

</td>

<td class="text-center">

<a href="/library/articles/binary_iv.html" data-toggle="tooltip" title="Read description of design"><span class="fab fa-readme fa-lg"></span></a>

</td>

<td class="text-center">

<a href="/library/reference/binary_iv_designer.html" data-toggle="tooltip" title="Open designer function documentation"><span class="fas fa-pencil-alt fa-lg"></span></a>

</td>

<td class="text-center">

<a href="https://eos.wzb.eu/ipi/DDinspector/?import_library=binary_iv_design" data-toggle="tooltip" title="Go to design inspector"><span class="fas fa-info-circle fa-lg"></span></a>

</td>

<td>

<a href="https://declaredesign.org/about/">DeclareDesign</a>

</td>

<td>

experiment

</td>

</tr>

<tr>

<td>

Two Arm Covariate Design

</td>

<td class="text-center">

<a href="/library/articles/two_arm_covariate.html" data-toggle="tooltip" title="Read description of design"><span class="fab fa-readme fa-lg"></span></a>

</td>

<td class="text-center">

<a href="/library/reference/two_arm_covariate_designer.html" data-toggle="tooltip" title="Open designer function documentation"><span class="fas fa-pencil-alt fa-lg"></span></a>

</td>

<td class="text-center">

<a href="https://eos.wzb.eu/ipi/DDinspector/?import_library=two_arm_covariate" data-toggle="tooltip" title="Go to design inspector"><span class="fas fa-info-circle fa-lg"></span></a>

</td>

<td>

<a href="https://declaredesign.org/about/">DeclareDesign</a>

</td>

<td>

experiment

</td>

</tr>

<tr>

<td>

My Design

</td>

<td class="text-center">

<a href="/library/articles/example_design.html" data-toggle="tooltip" title="Read description of design"><span class="fab fa-readme fa-lg"></span></a>

</td>

<td>

</td>

<td>

</td>

<td>

<a href="https://en.wikipedia.org/wiki/Joe_Bloggs">Joe Bloggs</a>

</td>

<td>

</td>

</tr>

</tbody>

</table>

## Installing the design library

To install the latest stable release of **DesignLibrary**, please ensure
that you are running version 3.4 or later of R and run the following
code:

``` r
install.packages("DesignLibrary")
```

If you would like to use the latest development release of
**DesignLibrary**, please ensure that you are running version 3.4 or
later of R and run the following code:

``` r
devtools::install_github("DeclareDesign/DesignLibrary", keep_source = TRUE)
```

## Contributing designs and designers

We welcome contributions to the library\!

  - You can [submit static
    designs](https://declaredesign.org/library/articles/how_to_write_and_contribute_designs.html)
    made in `DeclareDesign`, which will live as properly attributed
    entries in the library on our website
  - Or you can [submit designer functions that generate
    designs](https://declaredesign.org/library/articles/how_to_write_and_contribute_designers.html),
    which may be added to the CRAN version of the package

-----

This project is generously supported by a grant from the [Laura and John
Arnold Foundation](http://www.arnoldfoundation.org) and seed funding
from [Evidence in Governance and Politics (EGAP)](http://egap.org).
