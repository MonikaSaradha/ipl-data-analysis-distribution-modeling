# IPL Data Analysis & Distribution Modeling

## Overview

This project analyzes Indian Premier League (IPL) datasets using both **Python** and **R** to extract insights on player performance, statistical distributions, and salary relationships.

The analysis combines ball-by-ball data, match data, and player salary data to understand trends, identify top performers, and model performance distributions.

---

## Datasets

The project uses three datasets:

- **Ball-by-Ball Dataset**  
  Contains delivery-level match data including runs scored, wickets, and player details.

- **IPL Matches Dataset**  
  Includes match-level information such as teams, venues, and outcomes.

- **IPL Salary Dataset**  
  Contains player performance metrics along with salary (final price).

---

## Objectives

- Identify top run scorers and wicket trends across seasons  
- Analyze recent IPL seasons for performance insights  
- Fit statistical distributions to runs and wickets data  
- Study the relationship between player performance and salary  

---

## Data Preprocessing

- Checked dataset structure and data types  
- Handled missing values (especially in match dataset)  
- Cleaned and filtered data for analysis  
- Selected relevant variables for modeling  

---

## Analysis

### Player Performance

- Aggregated runs and wickets by player and season  
- Identified top run scorers and low wicket performers  
- Compared performance across seasons  

---

### Distribution Modeling

- Applied **Kolmogorov-Smirnov (KS) test**  
- Fitted probability distributions to:
  - Runs scored  
  - Wickets taken  
- Identified suitable distributions (e.g., Alpha distribution)  

---

### Salary vs Performance

- Performed correlation analysis between:
  - Runs  
  - Matches  
  - Sixes  
  - Final Price  

- Visualized relationship between performance and salary  

---

## Key Insights

- Top players consistently dominate scoring across seasons  
- Statistical distributions can approximate performance patterns  
- Player salary is strongly influenced by performance metrics  
- Runs and match participation play a key role in determining salary  

---

## Tech Stack

### Python
- pandas  
- numpy  
- matplotlib  
- scipy  
- statsmodels  

### R
- dplyr  
- ggplot2  
- MASS  
- fitdistrplus  

---

## Project Structure

* `analysis.ipynb` – Python implementation
* `analysis.R` – R implementation
* `data/` – datasets
  * `ipl_ball_by_ball.xlsx`
  * `ipl_salary_data.xlsx`
  * `ipl_matches.csv`
* `README.md` – project overview
* `project_report.pdf` – detailed analysis


---

## Data Sources

The datasets used in this project are publicly available from open sources such as:

- Kaggle IPL datasets  
- Public cricket analytics repositories  
- Open sports data platforms  

---

## Future Improvements

- Apply advanced distribution fitting techniques  
- Use machine learning models for salary prediction  
- Include additional performance metrics (strike rate, economy rate)  
- Build interactive dashboards for visualization  

