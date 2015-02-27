- view: disabled_job_server
  sql_table_name: DISABLED_JOB_SERVER
  fields:

  - dimension: server_name
    sql: ${TABLE}.SERVER_NAME

  - measure: count
    type: count
    drill_fields: [server_name]

