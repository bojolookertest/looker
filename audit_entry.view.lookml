- view: audit_entry
  sql_table_name: AUDIT_ENTRY
  fields:

  - dimension: audit_id
    type: int
    sql: ${TABLE}.AUDIT_ID

  - dimension: audit_type_code
    sql: ${TABLE}.AUDIT_TYPE_CODE

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: log
    sql: ${TABLE}.LOG

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - measure: count
    type: count
    drill_fields: []

