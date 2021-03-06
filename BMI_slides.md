Project Shiny Application and Reproducible Pitch
========================================================
author: Filomena Ciccarelli
date: 26th June 2016
autosize: true

Background 
========================================================

These slides are part of *Developing Data Products* course assignment from Coursera.

The project consists in two activities:

 - Create a *Shiny* application : I used an example from tutorial from rstudio.github.io on shiny on inputs-and-outputs.
 - Create a presentation in *Slidify* or *Rstudio Presenter* to pitch for the application.


The Shiny app developed as part of the first assignment demo is avalilable at: https://filomena.shinyapps.io/BodyMassIndex/

The source code for ui.R and server.R files are available on the GitHub repo: https://github.com/FilomenaC/Data-Products

Body Mass Index - Shiny Application
========================================================
The Shiny Application created as part of the project provides a very simple tool and GUI to calculate the Body Mass Index (BMI) according to an individual weight and height paramenters.

- Weight is entered in Kilograms (kg)
- Height is entered in centimeters (cm)


A reference table is displayed to indicate the different weight categories on the basis of the BMI index calculation.

The prediction function
========================================================
The prediction function for the BMI index has two regressors (height and weight) $\frac{Weight[kg]}{Height[cm]^2}$

```r
bmiIndex<- function(inHe, inWe) inWe/(inHe/100)^2
```
Below is the **bmiIndex** for an individual with *Height=169cm* and *Weight=69kg*

```r
bmiIndex(169,69)
```

```
[1] 24.15882
```

Benchmarking the BMI Index
======

The BMI application provides also a benchmarking table where individual can assess their index results against predefined weight categories.

| Weight Categories | BMI(kg/m^2) | 
|------:|:-----|
| Underweight | <18.5 | 
| Healthy Weight | 18.5 - 24.9 | 
| Overweight | 25 - 29.9 |
|Obese | 30 - 34.9 |
| Severely Obese | 35 - 39.9 |
| Morbidly Obese | >= 40 |


A BMI Index of 24.2, indicates a *Healthy Weight*. An individual with *Height = 172cm* and *Weight = 105kg* has a BMI Index of 35.5 and is *severly obese*.
