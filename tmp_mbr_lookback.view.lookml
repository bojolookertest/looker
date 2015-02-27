- view: tmp_mbr_lookback
  sql_table_name: tmp_mbr_LOOKBACK
  fields:

  - dimension: company_id
    type: int
    # hidden: true
    sql: ${TABLE}.COMPANY_ID

  - dimension_group: end_of_month_as_datetime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.END_OF_MONTH_AS_DATETIME

  - dimension: month_as_number
    type: int
    sql: ${TABLE}.MONTH_AS_NUMBER

  - dimension_group: start_of_month_as_datetime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.START_OF_MONTH_AS_DATETIME

  - measure: count
    type: count
    drill_fields: [company.company_id, company.name, company.legal_company_name]

