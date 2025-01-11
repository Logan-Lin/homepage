---
title:
---

> Topic: [[Spatiotemporal Data Mining]], [[Trajectory Data Mining]], [[Representation Learning]]

UniTE: A Survey and Unified Pipeline for Pre-training Spatiotemporal Trajectory Embeddings. [Paper](https://ieeexplore.ieee.org/document/10818577), [Preprint](https://arxiv.org/abs/2407.12550), [Code](https://github.com/Logan-Lin/UniTE)
- Authors: **Yan Lin**, Zeyu Zhou, Yicheng Liu, Haochen Lv, Haomin Wen, Tianyi Li, Yushuai Li, Christian S. Jensen, Shengnan Guo, Youfang Lin, Huaiyu Wan
- Journal: IEEE TKDE, 2024

![[unite.webp]]

Spatiotemporal trajectories are sequences of timestamped locations, which enable a variety of analyses that in turn enable important real-world applications. It is common to map trajectories to vectors, called embeddings, before subsequent analyses. Thus, the qualities of embeddings are very important. Methods for pre-training embeddings, which leverage unlabeled trajectories for training universal embeddings, have shown promising applicability across different tasks, thus attracting considerable interest. However, research progress on this topic faces two key challenges: a lack of a comprehensive overview of existing methods, resulting in several related methods not being well-recognized, and the absence of a unified pipeline, complicating the development of new methods and the analysis of methods.

We present UniTE, a survey and a unified pipeline for this domain. In doing so, we present a comprehensive list of existing methods for pre-training trajectory embeddings, which includes methods that either explicitly or implicitly employ pre-training techniques. Further, we present a unified and modular pipeline with publicly available underlying code, simplifying the process of constructing and evaluating methods for pre-training trajectory embeddings. Additionally, we contribute a selection of experimental results using the proposed pipeline on real-world datasets.