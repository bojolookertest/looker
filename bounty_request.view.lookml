- view: bounty_request
  sql_table_name: BOUNTY_REQUEST
  fields:

  - dimension: bounty_request_id
    primary_key: true
    type: int
    sql: ${TABLE}.BOUNTY_REQUEST_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: external_accounting_id
    type: int
    # hidden: true
    sql: ${TABLE}.EXTERNAL_ACCOUNTING_ID

  - dimension: hire_id
    type: int
    # hidden: true
    sql: ${TABLE}.HIRE_ID

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - measure: count
    type: count
    drill_fields: [bounty_request_id, external_accounting.id, hire.hire_id]

