---
title:
---
> Topic: [[Spatiotemporal Data Mining]]

[[STCDM]]: Spatio-Temporal Contrastive Diffusion Model for Check-in Sequence Generation.
- Authors: Letian Gong, Shengnan Guo, **Yan Lin**, Yichen Liu, Erwen Zheng, Yiwei Shuang, Youfang Lin, Jilin Hu, Huaiyu Wan
- Journal: IEEE TKDE, 2024

![[stcdm.webp]]

Analyzing and comprehending check-in sequences is crucial for various applications in smart cities. However, publicly available check-in datasets are often limited in scale due to privacy concerns. This poses a significant obstacle to academic research and downstream applications. Thus, it is urgent to generate realistic check-in datasets. The denoising diffusion probabilistic model (DDPM) as one of the most capable generation methods is a good choice to achieve this goal. However, generating check-in sequences using DDPM is not an easy feat. The difficulties lie in handling check-in sequences of variable lengths and capturing the correlation from check- in sequences’ distinct characteristics. This paper addresses the challenges by proposing a Spatio-Temporal Contrastive Diffusion Model (STCDM). This model introduces a novel spatio-temporal lossless encoding method that effectively encodes check-in sequences into a suitable format with equal length. Furthermore, we capture the spatio-temporal correlations with two disentangled diffusion modules to reduce the impact of the difference between spatial and temporal characteristics. Finally, we incorporate contrastive learning to enhance the relationship between diffusion modules. We generate four realistic datasets in different scenarios using STCDM and design four metrics for comparison. Experiments demonstrate that our generated datasets are more realistic and free of privacy leakage.