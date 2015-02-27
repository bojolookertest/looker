- view: audit_data
  sql_table_name: AUDIT_DATA
  fields:

  - dimension: audit_id
    type: int
    sql: ${TABLE}.AUDIT_ID

  - dimension: data_id
    type: int
    sql: ${TABLE}.DATA_ID

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: value
    sql: ${TABLE}.VALUE

  - measure: count
    type: count
    drill_fields: [name]

