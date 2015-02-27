- view: job_category_temp
  sql_table_name: JOB_CATEGORY_TEMP
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: left_node
    type: int
    sql: ${TABLE}.LEFT_NODE

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: right_node
    type: int
    sql: ${TABLE}.RIGHT_NODE

  - dimension: status_code
    sql: ${TABLE}.STATUS_CODE

  - measure: count
    type: count
    drill_fields: [id, name]

