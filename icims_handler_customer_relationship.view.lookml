- view: icims_handler_customer_relationship
  sql_table_name: ICIMS_HANDLER_CUSTOMER_RELATIONSHIP
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: company_reference_id
    sql: ${TABLE}.COMPANY_REFERENCE_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: handler_name
    sql: ${TABLE}.HANDLER_NAME

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - measure: count
    type: count
    drill_fields: [id, handler_name]

