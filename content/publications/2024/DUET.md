---
title: DUET
---
> Topic: [[Time Series]]

DUET: Dual Clustering Enhanced Multivariate Time Series Forecasting.
- Authors: Xiangfei Qiu, Xingjian Wu, **Yan Lin**, Chenjuan Guo, Jilin Hu, Bin Yang
- Conference: KDD, 2025.

![[DUET.webp]]

Multivariate time series forecasting is crucial for various applications, such as financial investment, energy management, weather forecasting, and traffic optimization. However, accurate forecasting is challenging due to two main factors. First, real-world time series often show heterogeneous temporal patterns caused by distribution shifts over time. Second, correlations among channels are complex and intertwined, making it hard to model the interactions among channels precisely and flexibly.

In this study, we address these challenges by proposing a general framework called DUET, which introduces DUal clustering on the temporal and channel dimensions to Enhance multivariate Time series forecasting. First, we design a Temporal Clustering Module (TCM) that clusters time series into fine-grained distributions to handle heterogeneous temporal patterns. For different distribution clusters, we design various pattern extractors to capture their intrinsic temporal patterns, thus modeling the heterogeneity. Second, we introduce a novel Channel-Soft-Clustering strategy and design a Channel Clustering Module (CCM), which captures the relationships among channels in the frequency domain through metric learning and applies sparsification to mitigate the adverse effects of noisy channels. Finally, DUET combines TCM and CCM to incorporate both the temporal and channel dimensions. Extensive experiments on 25 real-world datasets from 10 application domains, demonstrate the state-of-the-art performance of DUET.