- view: gcp_qc_notification_type
  sql_table_name: GCP_QC_NOTIFICATION_TYPE
  fields:

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: notification_type
    sql: ${TABLE}.NOTIFICATION_TYPE

  - measure: count
    type: count
    drill_fields: []

