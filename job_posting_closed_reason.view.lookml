- view: job_posting_closed_reason
  sql_table_name: JOB_POSTING_CLOSED_REASON
  fields:

  - dimension: code
    sql: ${TABLE}.CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: is_displayed
    type: int
    sql: ${TABLE}.IS_DISPLAYED

  - measure: count
    type: count
    drill_fields: []

