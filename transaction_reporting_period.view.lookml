- view: transaction_reporting_period
  sql_table_name: TRANSACTION_REPORTING_PERIOD
  fields:

  - dimension: transaction_reporting_period_id
    primary_key: true
    type: int
    sql: ${TABLE}.TRANSACTION_REPORTING_PERIOD_ID

  - dimension: label
    sql: ${TABLE}.LABEL

  - dimension: reporting_period_first_day_in_month
    type: int
    sql: ${TABLE}.REPORTING_PERIOD_FIRST_DAY_IN_MONTH

  - dimension: reporting_period_length_in_days
    type: int
    sql: ${TABLE}.REPORTING_PERIOD_LENGTH_IN_DAYS

  - dimension: reporting_period_month
    type: int
    sql: ${TABLE}.REPORTING_PERIOD_MONTH

  - dimension: reporting_period_year
    type: int
    sql: ${TABLE}.REPORTING_PERIOD_YEAR

  - dimension: sort_order
    type: int
    sql: ${TABLE}.SORT_ORDER

  - measure: count
    type: count
    drill_fields: [transaction_reporting_period_id]

