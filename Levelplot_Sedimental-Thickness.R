# ============================================================================
# Level plot (heatmap) of sediment thickness of the Mariana Trench (R). This produced Figure 19 (right) in the peer-reviewed article:
#   Lemenkova, P. (2019). Statistical Analysis of the Mariana Trench
#   Geomorphology Using R Programming Language.
#   Geodesy and Cartography, 45(2), 57-84.
#   DOI: https://doi.org/10.3846/gac.2019.3785
#   figshare: https://doi.org/10.6084/m9.figshare.9762860
#   HAL: https://hal.science/hal-02277500  Zenodo: https://zenodo.org/record/3385005
# Author: Polina Lemenkova | ORCID: 0000-0002-5759-1089
# ============================================================================

# шаг-1. вчитываем таблицу. делаем датафрейм.
MDF <- read.csv("Morphology.csv", header=TRUE, sep = ",")
MDF <- na.omit(MDF) 
row.has.na <- apply(MDF, 1, function(x){any(is.na(x))}) 
sum(row.has.na) 
head(MDF)

# задаем значения XYZ
x <- MDF$slope_angle
y <- MDF$depth_min
data <- expand.grid(X=x, Y=y)
data$Z <- MDF$sedim_thick
 
# делаем "карту температур" // Levelplot with ggplot2
library(ggplot2)
ggplot(data, aes(X, Y, z = Z)) + geom_tile(aes(fill = Z)) + 
    theme_bw() + 
    scale_fill_gradient(name = "Sedimental \nThickness", low="white", high="blue") +
	labs(
	title = "Mariana Trench",
	subtitle = "Levelplot of Sedimental Thickness",
	x = "Trench slope angle", 
	y = "Depth (m)")