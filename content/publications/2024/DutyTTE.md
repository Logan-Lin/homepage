---
title:
---
> Topic: [[Spatiotemporal Data Mining]]

DutyTTE: Deciphering Uncertainty in Origin-Destination Travel Time Estimation. [Code](https://anonymous.4open.science/r/DutyTTE-31D3/README.md)
- Authors: Xiaowei Mao\*, **Yan Lin**\*, Shengnan Guo, Yubin Chen, Xingyu Xian, Haomin Wen, Qisen Xu, Youfang Lin, Huaiyu Wan
- Conference: AAAI, 2024

![[dutytte.webp]]

Uncertainty quantification in travel time estimation (TTE) aims to estimate the confidence interval for travel time, given the origin (O), destination (D), and departure time (T). Accurately quantifying this uncertainty requires generating the most likely path and assessing travel time uncertainty along the path. This involves two main challenges: 1) Predicting a path that aligns with the ground truth, and 2) modeling the impact of travel time in each segment on overall uncertainty under varying conditions. We propose DutyTTE to address these challenges. For the first challenge, we introduce a deep reinforcement learning method to improve alignment between the predicted path and the ground truth, providing more accurate travel time information from road segments to improve TTE. For the second challenge, we propose a mixture of experts guided uncertainty quantification mechanism to better capture travel time uncertainty for each segment under varying contexts. Additionally, we calibrate our results using Hoeffding's upper-confidence bound to provide statistical guarantees for the estimated confidence intervals. Extensive experiments on two real-world datasets demonstrate the superiority of our proposed method.

> [!note] Notes
> \* Authors contribute equally.