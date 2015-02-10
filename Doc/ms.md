% Relationships between environmental variabels and species richness
% D. Li \and D. Waller
% Working paper -- \today

**Running headline**: Environment and species richness

**Abstract**: Your awesome abstract here.

\clearpage

# Introduction

Here is your introduction. It should describe clearly the rationale for the study being done and the previous work related with the study. It should also tell readers about your specific hypothese/questions being addressed. Citations will be like this [@adair_single-pool_2010], or [e.g., @clark_loss_2008], or [@eriksson_seed_1993;@williamson_dissolved_1999]

Here is the second paragraph of the introduction. 


# Methods

Here is the method section. You can include equations easily. For inline equations, use $\text{var}(X) = p(1-p)$. For display equation, use

\begin{equation}
\text{var}(X) = p(1-p)
\end{equation}

## Results


#### Insert tables by `kable` in knitr package in R



| Plot| sprich|
|----:|------:|
| 3294|     31|
| 3297|     28|
| 3299|     26|
| 3330|     27|

Put results inline, e.g. the mean species richness is 28.

#### Insert tables by `xtable` package in R


Show as Table. \ref{t:anova}:

\begin{table}[ht]
\centering
\caption{Caption here} 
\label{t:anova}
\begin{tabular}{lrrrrr}
  \toprule
 & Df & Sum Sq & Mean Sq & F value & Pr($>$F) \\ 
  \midrule
pH          & 1 & 4.58 & 4.58 & 4.77 & 0.2733 \\ 
  shade       & 1 & 8.45 & 8.45 & 8.80 & 0.2070 \\ 
  Residuals   & 1 & 0.96 & 0.96 &  &  \\ 
   \bottomrule
\end{tabular}
\end{table}

#### Insert tables by hand


Show as Table. \ref{t:byhand}:

Table: Caption here. \label{t:byhand}

Col A             Col B       Col C                   Col D
------------      -------     ------------------      ------------------
row 1             190         $112 \pm 2$             $233 \pm 3$
$\eta$            0.13        0.12                    0.12
$\eta^2$          0.14        0.13                    0.50
$\eta^3$          0.15        0.31                    0.52


#### Figures

How about figures? We illustrate this in Fig. \ref{f:plot}. 

\clearpage

[f:plot]: Figs/plot.pdf
![Caption here.\label{f:plot}][f:plot]

\clearpage

# References
