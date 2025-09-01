---
title: 'My journey to the State Of The Art of Probabilistic Generative Models'
date: 2025-08-30
permalink: /posts/2025/08/journey-to-probabilist-generative-models/
tags:
  - PhD
  - Deep Learning
  - Generative Models
---
The motivation behind my investigation of deep learning neural network architectures is the realisation that current models do not accurately replicate the behaviour of the human brain.

As a complete novice in this field, I opted to start with probabilistic latent variable models with the help of the Polytechnic University of Madrid's Signal Processing Applications Group.

We were talking about Variable Autoencoders, Normalising Flows and Diffusion models. Due to my lack of knowledge in this area, I started reading Kingma's paper on VAEs without first establishing a solid foundation in statistics and Bayesian probability.

After struggling to understand the mathematical concepts in the paper, I changed my approach. First, I would lay the probabilistic foundations and then study the models in chronological order until I reach the state of the art.

The proposed research flow, which is subject to change, begins with an understanding of Bayesian probability, progressing to probabilistic dimensionality reduction models before advancing to generative models. These include Probabilistic Principal Component Analysis (Probabilistic PCA; Tipping & Bishop, 1999), Latent Dirichlet Allocation (Blei et al., 2003), VAEs (Variational Autoencoders; Kingma & Welling, 2013), Normalising Flows (Rezende & Mohamed, 2015) and Diffusion Models (Ho et al., 2020).

Throughout this journey, I will attempt to implement each model, using them to generate both tabular and image data.

Alejandro Guerra.