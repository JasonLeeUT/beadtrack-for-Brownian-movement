# beadtrack-for-Brownian-movement
Track the bead with human supervision

首先考虑第一个问题，回顾课本40页的公式： $$ E_{\text{out}}(\mathcal{H} )\le E_{\text{in}}(\mathcal{H}) + \sqrt{\frac 1{2N} \ln \frac{2M}{\delta}}的概率大于等于1-\delta $$ 这里$M= 100, N=25,E_{\text{in}} =0.25$，所以 $$ E_{\text{out}}(\mathcal{H} )\le 0.25 + \sqrt{\frac 1{2\times 25 } \ln \frac{2\times 100}{\delta}}的概率大于等于1-\delta $$ 接着考虑第二个问题，先回忆Problem 2.14的不等式，是有关并集的VC dimension $$ \mathcal{H}=\mathcal{H}1 \cup \mathcal{H}2\cup . . . \cup\mathcal{H}K,d{vc}(\mathcal H_i)=d{vc}\ d{vc}(\mathcal{H}) < K(d_{vc} + 1) $$ 所以对于此题来说$K=100,d_{vc}=10$ $$ d_{vc}(\mathcal{H}) < K(d_{vc} + 1)=100\times11=1100 $$ 再回到58页的不等式 $$ E_{\text{out}}(\mathcal{H} )\le E_{\text{in}}(\mathcal{H}) + \sqrt{\frac 8 N\ln(\frac {4((2N)^{d_{vc}}+1)}{\delta})}的概率大于等于1-\delta $$ 对于此题来说$N=100​$ $$ E_{\text{in}}(\mathcal{H})=0.15\ \sqrt{\frac 8 N\ln(\frac {4((2N)^{d_{vc}}+1)}{\delta})}<\sqrt{\frac 8 {100}\ln(\frac {4((200)^{1100}+1)}{\delta})} $$ 所以 $$ E_{\text{out}}(\mathcal{H} )\le0.15 +\sqrt{\frac 8 {100}\ln(\frac {4((200)^{1100}+1)}{\delta})}的概率大于等于1-\delta $$

不难看出第二个上界要明显大很多。
