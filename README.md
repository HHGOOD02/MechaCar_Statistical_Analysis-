# MechaCar_Statistical_Analysis

## Overview
The goal of this analysis was to perform multi-faceted analytical transforms of MechaCar data to identify trends in variable pertinence to MechaCar MPG;
to collect and analyze suspension coil data (PSI) across the sample data; and to design and implement statistical tests which quantify production lot variance
in the fields being examined.

### Linear Regression to Predict MPG

<img width="478" alt="Non-Random Var" src="https://user-images.githubusercontent.com/101959051/183349518-cceffa2c-1151-4818-ae29-51a25c553848.png">

Two variables which will not provide random fluctuations to MPG values in our dataset are Ground Clearance and Vehicle Length. We can observe that their
p-Values are 5.35e-11, which below our .05% asssumed significance delimiter. Our linreg model's slope is not zero as a result. It is reasonable to conclude
based on the >.70 p Value (meaning greater than 70% of our dependant variable values are predicted by these) that they do accurately model MPG, though not perfectly so.

### Summary Statistics on Suspension Coils

<img width="492" alt="Lots Summary" src="https://user-images.githubusercontent.com/101959051/183350139-cc3ea27a-bc34-4faf-9bd6-06da882e152f.png">
(Total summary statistics)

<img width="333" alt="Total Summary" src="https://user-images.githubusercontent.com/101959051/183350140-54e3e2a4-ace7-4d84-b09e-33a9b19bebd4.png">
(Summary statistics by lot)

Unlike Lot 1 and 2, which both possess variance within the 100psi coil pressure constraints, Lot 3 exceeds the threshold at over 170PSI of variance.
As a result, Lot 1 and 2 both fall within specifications, whereas Lot 3 does not meet the specifications.

### T-Tests on Suspension Coils

<img width="400" alt="Composite T-Test" src="https://user-images.githubusercontent.com/101959051/183350527-c8509049-8938-4268-a07e-4be9c62f2ca8.png">
(Composite T-Test)

<img width="402" alt="L1 T-Test" src="https://user-images.githubusercontent.com/101959051/183350562-fd0a2805-ee13-4c7d-97cf-e4a206052ec9.png">
<img width="402" alt="L2 T-Test" src="https://user-images.githubusercontent.com/101959051/183350563-91fc8e0c-4a59-4004-b06c-3a42d57c5213.png">
<img width="402" alt="L3 T-Test" src="https://user-images.githubusercontent.com/101959051/183350564-0efcb8ae-3552-4d4d-8b63-54c6bd5e5ab3.png">
(T-Tests of Lots 1, 2, and 3 in order)

The P values of Lots 1 and 2 are both acceptably similar to our the mean value, whereas Lot 3 possesses a notably abberant P value of ~.04168, which is
not only an order of magnitude lower than Lots 1 and 2, but also falls below our .05% significance threshold. This is further reinforcement that Lot 3 is
notably differentiable from Lots 1 and 2.

### Study Design: MechaCar vs Competition

To further investigate the competitiveness of the MechaCar, I would encourage further investigation into these 3 factors:
- Mean Time Between Overhaul: A measure of average elapsed duration between a debilitating or maintenance-necessitating breakdown of a part or system of parts in the vehicle
- Sustainment Cost per Mile: The price of maintenance and ongoing, recurrant costs - such as fuel - per mile driven
- Sunk Cost per Mile: The total price of the car + maintenance and ongoing costs, such as fuel, per mile driven over a multitude of lifetime miles driven

The null hypotheses that could be tested against would be the hypothesis of 0 difference between MechaCar and competitors in these fields

A number of specific tests, mostly stachastic analyses of usage patterns, gas prices, miles driven, etc. and a subsequent T-Test would be necessary to perform this statistical examination
