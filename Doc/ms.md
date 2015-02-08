% Relationships between environmental variabels and species richness
% D. Li \and D. Waller
% Working paper -- \today

**Running headline**: Environment and species richness

**Abstract**: Your awesome abstract here.

\clearpage


# Introduction

Here is your introduction. It should describe clearly the rationale for the study being done and the previous work related with the study. It should also tell readers about your specific hypothese/questions being addressed. Citations will be like this [@adair_single-pool_2010], or [e.g., @clark_loss_2008], or [@eriksson_seed_1993;@williamson_dissolved_1999]


# Methods

Here is the method section. You can include equations easily. For inline equations, use $\text{var}(X) = p(1-p)$. For display equation, use

\begin{equation}
\text{var}(X) = p(1-p)
\end{equation}


## Results

Insert tables:


| Plot| sprich|
|----:|------:|
| 3294|     31|
| 3297|     28|
| 3299|     26|
| 3330|     27|

Or put results inline, e.g. the mean species richness is 28.

<!-- 
Or you can type tables by hand:

Col A             Col B       Col C                   Col D
------------      -------     ------------------      ------------------
row 1             190         $112 \pm 2$             $233 \pm 3$
$\eta$            0.13        0.12                    0.12
$\eta^2$          0.14        0.13                    0.50
$\eta^3$          0.15        0.31                    0.52

Using `xtable` package in R:

% latex table generated in R 3.1.2 by xtable 1.7-4 package
% Sat Feb  7 16:51:04 2015
\begin{tabular}{lrrrrr}
  \toprule
 & Df & Sum Sq & Mean Sq & F value & Pr($>$F) \\ 
  \midrule
block       & 5 & 343.29 & 68.66 & 4.45 & 0.0159 \\ 
  N           & 1 & 189.28 & 189.28 & 12.26 & 0.0044 \\ 
  P           & 1 & 8.40 & 8.40 & 0.54 & 0.4749 \\ 
  K           & 1 & 95.20 & 95.20 & 6.17 & 0.0288 \\ 
  N:P         & 1 & 21.28 & 21.28 & 1.38 & 0.2632 \\ 
  N:K         & 1 & 33.14 & 33.14 & 2.15 & 0.1686 \\ 
  P:K         & 1 & 0.48 & 0.48 & 0.03 & 0.8628 \\ 
  Residuals   & 12 & 185.29 & 15.44 &  &  \\ 
   \bottomrule
\end{tabular}
 -->

How about figures? We illustrate this in Fig. \ref{f:plot}. 

\clearpage

[f:plot]: Figs/plot.pdf
![Caption here.\label{f:plot}][f:plot]

\clearpage

# References
