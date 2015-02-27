- view: account
  sql_table_name: ACCOUNT
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: account_chart_type_id
    type: int
    # hidden: true
    sql: ${TABLE}.ACCOUNT_CHART_TYPE_ID

  - dimension: account_type_code
    sql: ${TABLE}.ACCOUNT_TYPE_CODE

  - dimension: company_id
    type: int
    # hidden: true
    sql: ${TABLE}.COMPANY_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: currency_code
    sql: ${TABLE}.CURRENCY_CODE

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - account_chart_type.id
    - company.company_id
    - company.name
    - company.legal_company_name
    - account_balance.count
    - account_entry.count

