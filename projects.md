---
layout: page
title: Projects
permalink: /projects/
---

# Textanno: Efficiently Combining Human and Machine Effort on Text Annotation Tasks

Manual human annotation of text corpora remains key to training statistical Natural Language Processing (NLP) systems, but it typically requires significant human effort to accomplish. Partially-trained machine learning systems could provide certain assistance through imperfect annotation suggestions, but open questions remain on how to best provide input from machine to human in a way that best improves their overall efficiency and accuracy.
<img src="../images/textanno.png" alt="textanno" style="float: right; margin: 20px; width: 400px;"/>

We identified two intuitive modes of giving human workers suggestions from the machine, one emphasizing convenience for the worker to accept suggestions from the machine, and one emphasizing convenience for the worker to dismiss suggestions from the machine, and found inflection points, differing levels of accuracies in machine suggestions, at which modes were most efficient. This work helped us understand the relative capabilities of human machine teaming in text annotation processing for natural language, and helps us scalably build effective intelligent systems.


# ML Augmentation: Communication channels between humans and machines for finding unknown unknowns

When machine learning models are used for crucial decisions in the real world, it is imperative to recognize when and how these failures occur. A large amount of strategies (uncertainty sampling, sampling near the separating hyperplane, query-by-committee, query-by-bagging, and others) rely on examining low confidence estimations and querying correct human labels for them. However, a class of errors can occur where the model make incorrect highs confidence estimates, unknown unknowns.  These errors can arise when the training data for the model does not match samples encountered when the model is deployed. The model classifies incorrectly with high confidence based on biases learned from training.

To find identify unknown unknowns, naively randomly sampling test data and querying a human, or manual inspection of test data may be unfeasibly costly, as there may be a relatively low number of problem points in proportion to the whole. This work aims to extend prior work [1][2] by leveraging human intuition for finding and describing unknown unknowns, creating an effective communication channel between human and machine to detect unknown unknowns.

[1] Lakkaraju, Himabindu, et al. "Identifying Unknown Unknowns in the Open World: Representations and Policies for Guided Exploration." AAAI. 2017.
[2] Attenberg, Josh, Panagiotis G. Ipeirotis, and Foster J. Provost. "Beat the Machine: Challenging Workers to Find the Unknown Unknowns." Human Computation 11.11 (2011).
