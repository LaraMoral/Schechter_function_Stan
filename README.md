## $\text{SCHECHTER} \ \ \text{FUNCTION} \ \ \text{IN} \ \ \text{STAN}$

Generation of a Stan model to determine the parameters $\alpha$, $L^{\ast}$ and $\phi^{\ast}$ of the Schechter luminosity function for galaxies ([Schechter (1976)](#1)):

$$ \Phi (L)=\phi^{\ast}\left( \frac{L}{L^{\ast}} \right)^{\alpha}e^{-\frac{L}{L^{\ast}}}\frac{1}{L^{\ast}} $$

$$\phi^{\ast}=\frac{1}{\Gamma(\alpha+1, L_{m}/L^{\ast})}\frac{N}{V}$$

where $N$ is the total number of galaxies in our sample and $V$ is the comoving volume.

A small range for the redshift is considered, which allows us to assume a uniform distribution for $z$, and a luminosity function independent of the redshift value. 


## References
<a id="1">[1]</a> 
Schechter, P. (1976). 
An analytic expression for the luminosity function for galaxies. 
$\textit{Astrophysical Journal}$, Vol. 203, p. 297-306, 203, 297-306.

