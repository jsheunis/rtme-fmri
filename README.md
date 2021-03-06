# rt-me-fMRI

[![Download the dataset from DataverseNL](https://img.shields.io/badge/download-BIDS%20dataset-9cf.svg)](https://doi.org/10.34894/R1TNL8) 
[![Explore the data interactively](https://img.shields.io/badge/explore-Interactive%20Web%20App-ff69b4.svg)](https://rt-me-fmri.herokuapp.com/)
[![Read this work](https://img.shields.io/badge/read-Data%20paper-brightgreen.svg)](https://doi.org/10.12688/f1000research.29988.1) 
[![Read this work](https://img.shields.io/badge/read-Methods%20paper-green.svg)](https://doi.org/10.1101/2020.12.08.416768) 
[![Reproduce figures](https://img.shields.io/badge/reproduce-Figures%20(data%20paper)-red.svg)](https://github.com/jsheunis/rt-me-fMRI/blob/master/rt-me-fmri_reproduce_dataFigures.ipynb) 
[![Reproduce figures](https://img.shields.io/badge/reproduce-Figures%20(methods%20paper)-orange.svg)](https://github.com/jsheunis/rt-me-fMRI/blob/master/rt-me-fmri_reproduce_methodsFigures.ipynb) 
[![Reproduce results](https://img.shields.io/badge/reproduce-Results%20(methods%20paper)-blueviolet.svg)](https://github.com/jsheunis/rt-me-fMRI/blob/master/rt-me-fmri_reproduce_resultsSummaries.ipynb) 


## Overview
This repository contains descriptions, code and data related to the real-time multi-echo functional magnetic resonance imaging (rt-me-fMRI) project conducted at the [Electrical Engineering department](https://www.tue.nl/en/research/research-groups/signal-processing-systems/) of the Eindhoven University of Technology. Project outputs include: 


1. A dataset and related publication:

    [**rt-me-fMRI: A task and resting state dataset for real-time, multi-echo fMRI methods development and validation**](https://doi.org/10.12688/f1000research.29988.1)

2. A methods publication:

    [**The effects of multi-echo fMRI combination and rapid <i>T<sub>2</sub>\*</i>-mapping on offline and real-time BOLD sensitivity**](https://doi.org/10.1101/2020.12.08.416768)

Below we provide more information and instructions regarding:
- [The dataset summary](#summary)
- [How to download the data](#download)
- [How to explore the data](#explore)
- [How to reproduce results and figures from the publications](#reproduce_data)
- [Relevant software tools](#software)
- [How to cite this work](#cite)
- [How to contribute](#contribute)


<div id="summary"></div>

## Data summary

The `rt-me-fMRI` dataset is a multi-echo fMRI dataset (N=28 healthy participants) with four task-based and two resting state runs that were collected, curated and made available to the research community. Its main purpose is to advance the development of methods for real-time multi-echo functional magnetic resonance imaging analysis with applications in real-time quality control, adaptive paradigms, and neurofeedback, although the variety of experimental task paradigms supports a multitude of use cases. Tasks include finger tapping, emotional face and shape matching, imagined finger tapping and imagined emotion processing. This figure summarises the collected data:

<img src="figures/data_article/fig1.png" alt="fig1" style="width: 90%; text-align: center"/>

The full data description is available as an F1000 [data article](https://doi.org/10.12688/f1000research.29988.1).

Several depictions of the data tree can be viewed [here](https://github.com/jsheunis/rt-me-fMRI/blob/master/data_tree.md)

<div id="download"></div>

## Downloading the data

The `rt-me-fMRI` dataset is available for reuse for the purpose of scientific research or education in the field of functional magnetic resonance imaging. If you wish to use the data, you have to agree to the terms of a [Data Use Agreement](https://github.com/jsheunis/rt-me-fMRI/blob/master/DUA.md) when downloading the data.

The dataset itself can be downloaded from DataverseNL [via this link](https://doi.org/10.34894/R1TNL8).

The dataset was collected, processed and shared in accordance with the European Union's General Data Protection Regulation (GDPR) as approved by Data Protection Officers at the research institution. These specific conditions aim for personal data privacy to be prioritised while adhering to FAIR data standards ("findable, accessible, interoperable, reusable"). Procedures included de-identifying brain images (e.g. removing personally identifiable information from image filenames and metadata and removing facial features from T1-weighted images), converting the data to BIDS format, employing a Data Use Agreement, and keeping participants fully informed about each of these steps and the associated risks and benefits.

Much of the work that went into this administrative process has been documented as part of the output of the [Open Brain Consent](https://open-brain-consent.readthedocs.io/en/stable/gdpr/index.html) Working Group, accessible [here](https://doi.org/10.1002/hbm.25351).


<div id="explore"></div>

## Exploring the data

To explore the dataset's derivative measures interactively, visit [this web application](https://rt-me-fmri.herokuapp.com). It was built with Python using the [Plotly Dash framework](https://plotly.com/dash/). The open source code base is available at [this repository](https://github.com/jsheunis/rt-me-fmri-dash).

<div id="reproduce_data"></div>

## Reproducibility: data preparation

The data preparation process is [documented here](https://github.com/jsheunis/rt-me-fMRI/tree/master/data_setup). This includes code to convert neuroimaging, physiological and other data to BIDS format.

<div id="reproduce_results"></div>

## Reproducibility: results

After preprocessing and quality checking of the data (see a full description in the data article) the data were processed and analysed as described in the methods article. Because of data storage limitations, these derivative data are not shared together with the `rt-me-fMRI` dataset. However, code and instructions are provided to allow these derivative data to be reproduced. Additionally, code and instructions are provided to subsequently generate the summary data from which the results of the methods paper as well as the data underlying the Dash application are derived:

- [Code and instructions to generate derivative data](https://github.com/jsheunis/rt-me-fMRI/blob/master/rt-me-fmri_reproduce_matlabProcessing.m)
- [Code and instcurtions to generate summary data for figures and Dash application](https://github.com/jsheunis/rt-me-fMRI/blob/master/rt-me-fmri_reproduce_resultsSummaries.ipynb)


<div id="reproduce_figures"></div>

## Reproducibility: figures

The following notebooks contain code and descriptions that allows figures for the data and methods articles to be reproduced:

- [Data figures](https://github.com/jsheunis/rt-me-fMRI/blob/master/rt-me-fmri_reproduce_dataFigures.ipynb)
- [Methods figures](https://github.com/jsheunis/rt-me-fMRI/blob/master/rt-me-fmri_reproduce_methodsFigures.ipynb)


<div id="software"></div>

## Software tools

All (pre)processing and major data analysis steps for both the data article and methods article were done using the open source MATLAB-based `fMRwhy` toolbox (v0.0.1; https://github.com/jsheunis/fMRwhy), which was developed over the course of this project. `fMRwhy` has has conditional dependencies:

- SPM12 (r7771; https://github.com/spm/spm12/releases/tag/r7771; Friston et al., 2007)
- bids-matlab (v.0.0.1, https://github.com/jsheunis/bids-matlab/releases/tag/fv0.0.1)
- Anatomy Toolbox (v3.0; Eickhoff et al., 2005)
- dicm2nii (v0.2 from a forked repository; https://github.com/jsheunis/dicm2nii/releases/tag/v0.2)
- TAPAS PhysIO (v3.2.0; https://github.com/translationalneuromodeling/tapas/releases/tag/v3.2.0; Kasper et al., 2017)
- Raincloud plots (v1.1 https://github.com/RainCloudPlots/RainCloudPlots/releases/tag/v1.1; Allen et al., 2019).


<div id="cite"></div>

## Citing this work

Papers, book chapters, books, posters, oral presentations, and all other presentations of results derived from the rt-me-fMRI dataset should acknowledge the origin of the data as follows:

>Data were provided (in part) by the Electrical Engineering Department, Eindhoven University of Technology, The Netherlands and Kempenhaeghe Epilepsy Center, Heeze, The Netherlands

In addition, please use the following citation when referring to the dataset:

>Heunis S, Breeuwer M, Caballero-Gaudes C et al. rt-me-fMRI: a task and resting state dataset for real-time, multi-echo fMRI methods development and validation [version 1; peer review: 1 approved, 1 approved with reservations]. F1000Research 2021, 10:70 (https://doi.org/10.12688/f1000research.29988.1)


And the following citation when referring to the methods article:

>Heunis, S., Breeuwer, M., Caballero-Gaudes, C., Hellrung, L., Huijbers, W., Jansen, J.F., Lamerichs, R., Zinger, S., Aldenkamp, A.P., 2020. The effects of multi-echo fMRI combination and rapid T2*-mapping on offline and real-time BOLD sensitivity. bioRxiv 2020.12.08.416768. https://doi.org/10.1101/2020.12.08.416768


<div id="contribute"></div>

## Contributions / feedback

Feedback and future contributions are very welcome. If you have any comments, questions or suggestions about the dataset or derivative measures, please [create an issue](https://github.com/jsheunis/rt-me-fMRI/issues) in this repository.



