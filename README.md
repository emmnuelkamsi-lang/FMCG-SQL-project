# International FMCG SQL Analysis

A SQL-based business analysis of an international FMCG (Fast-Moving Consumer Goods) sales dataset, covering profit trends, regional performance, brand popularity, and sales rep performance across multiple African countries.

## Overview

This project uses SQL to answer a series of real-world business questions about an FMCG company's sales data, including profit analysis by year/region/country, brand and beer consumption patterns, and top-performing sales representatives.

## Tools

- SQL (MySQL syntax)

## Business Questions Answered

- What was the total profit generated each year, and which year performed best?
- How does total profit compare across regions?
- Which countries generated the highest profit in 2019?
- Which month across the three years had the lowest profit?
- What was the minimum profit recorded in December 2018?
- How did monthly profit as a percentage of cost compare across 2019?
- Which brand generated the highest profit in Senegal?
- What are the top 3 brands by consumption in Francophone countries (Senegal, Togo, Benin)?
- What are the top 2 consumer brands in Ghana?
- What beer brands were consumed in Nigeria between 2017–2018?
- What is the favorite malt brand in English-speaking countries (2018–2019)?
- Which brands sold the highest in Nigeria in 2019?
- What are the favorite brands in the South-South region of Nigeria?
- How does beer consumption break down across brands in Nigeria?
- How does Budweiser consumption vary by region in Nigeria, and specifically in 2019?
- Which country has the highest overall beer consumption?
- Who is the top-performing sales rep for Budweiser in Senegal?
- Which country generated the highest profit in Q4 2019?

### Advanced Analysis (Window Functions)

- How do countries rank by profit within each individual year?
- What does the running (cumulative) total of profit look like year over year?
- What is the year-over-year profit growth percentage, both overall and broken down by country?
- Who are the top-performing sales reps overall, ranked by total profit generated?

## Techniques Used

- Aggregate functions (`SUM`, `MIN`) with `GROUP BY`
- Filtering with `WHERE`, `IN`, `LIKE`, and `BETWEEN`
- Ranking results with `ORDER BY` and `LIMIT`
- Calculated fields (e.g. profit margin as a percentage of cost)
- Multi-condition filtering for country/brand/year combinations
- Window functions: `RANK()`, `LAG()`, and running totals with `SUM() OVER()` for year-over-year growth and cumulative profit tracking

## How to Run

1. Load the dataset into a MySQL-compatible database as a table named `international_fmcg_sql_assessment`.
2. Open `international_fmcg_sql_assessment.sql` in your SQL client (MySQL Workbench, DBeaver, etc.).
3. Run each query individually to see the results for each business question.

## Author

Analysis by Emmanuel Kamsi.
