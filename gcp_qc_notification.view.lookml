- view: gcp_qc_notification
  sql_table_name: GCP_QC_NOTIFICATION
  fields:

  - dimension: conference_id
    type: int
    sql: ${TABLE}.CONFERENCE_ID

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: gcp_qc_notifcation_id
    type: int
    sql: ${TABLE}.GCP_QC_NOTIFCATION_ID

  - dimension: message
    sql: ${TABLE}.MESSAGE

  - dimension: notification_type
    sql: ${TABLE}.NOTIFICATION_TYPE

  - measure: count
    type: count
    drill_fields: []

