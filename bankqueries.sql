-- Get basic statistics about the dataset
SELECT
  COUNT(*) AS total_records,
  COUNT(DISTINCT `age`) AS unique_ages,
  COUNT(DISTINCT `job`) AS unique_jobs,
  COUNT(DISTINCT `marital`) AS unique_marital_statuses,
  COUNT(DISTINCT `education`) AS unique_education_levels,
  COUNT(DISTINCT `default`) AS unique_defaults,
  COUNT(DISTINCT `housing`) AS unique_housings,
  COUNT(DISTINCT `loan`) AS unique_loans,
  COUNT(DISTINCT `contact`) AS unique_contacts,
  COUNT(DISTINCT `month`) AS unique_months,
  COUNT(DISTINCT `poutcome`) AS unique_poutcomes,
  COUNT(DISTINCT `y`) AS unique_target_values
FROM
  `banking-431121.banking1.bank`;

-- Count missing values in each column
SELECT
  SUM(CASE WHEN `age` IS NULL THEN 1 ELSE 0 END) AS missing_ages,
  SUM(CASE WHEN `job` IS NULL THEN 1 ELSE 0 END) AS missing_jobs,
  SUM(CASE WHEN `marital` IS NULL THEN 1 ELSE 0 END) AS missing_marital,
  SUM(CASE WHEN `education` IS NULL THEN 1 ELSE 0 END) AS missing_education,
  SUM(CASE WHEN `default` IS NULL THEN 1 ELSE 0 END) AS missing_default,
  SUM(CASE WHEN `balance` IS NULL THEN 1 ELSE 0 END) AS missing_balances,
  SUM(CASE WHEN `housing` IS NULL THEN 1 ELSE 0 END) AS missing_housing,
  SUM(CASE WHEN `loan` IS NULL THEN 1 ELSE 0 END) AS missing_loans,
  SUM(CASE WHEN `contact` IS NULL THEN 1 ELSE 0 END) AS missing_contacts,
  SUM(CASE WHEN `month` IS NULL THEN 1 ELSE 0 END) AS missing_months,
  SUM(CASE WHEN `poutcome` IS NULL THEN 1 ELSE 0 END) AS missing_poutcomes,
  SUM(CASE WHEN `y` IS NULL THEN 1 ELSE 0 END) AS missing_target
FROM
  `banking-431121.banking1.bank`;

 -- Summary statistics for numerical features
SELECT
  MIN(`age`) AS min_age,
  MAX(`age`) AS max_age,
  AVG(`age`) AS avg_age,
  MIN(`balance`) AS min_balance,
  MAX(`balance`) AS max_balance,
  AVG(`balance`) AS avg_balance,
  MIN(`duration`) AS min_duration,
  MAX(`duration`) AS max_duration,
  AVG(`duration`) AS avg_duration,
  MIN(`campaign`) AS min_campaign,
  MAX(`campaign`) AS max_campaign,
  AVG(`campaign`) AS avg_campaign
FROM
  `banking-431121.banking1.bank`;

  -- Counts for categorical features
SELECT
  `job`,
  COUNT(*) AS count
FROM
  `banking-431121.banking1.bank`
GROUP BY
  `job`;

SELECT
  `marital`,
  COUNT(*) AS count
FROM
  `banking-431121.banking1.bank`
GROUP BY
  `marital`;

SELECT
  `education`,
  COUNT(*) AS count
FROM
  `banking-431121.banking1.bank`
GROUP BY
  `education`;

-- Continue with other categorical features similarly

-- Aggregate data based on target variable 'y'
SELECT
  `y`,
  COUNT(*) AS total_count,
  AVG(`balance`) AS avg_balance,
  AVG(`duration`) AS avg_duration,
  AVG(`campaign`) AS avg_campaign
FROM
  `banking-431121.banking1.bank`
GROUP BY
  `y`;

-- Prepare data for clustering analysis
SELECT
  `age`,
  `balance`,
  `duration`,
  `campaign`
FROM
  `banking-431121.banking1.bank`;