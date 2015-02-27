- view: email_suppression_type
  sql_table_name: EMAIL_SUPPRESSION_TYPE
  fields:

  - dimension: days_to_expire
    type: int
    sql: ${TABLE}.DAYS_TO_EXPIRE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: email_vendor
    sql: ${TABLE}.EMAIL_VENDOR

  - dimension: name
    sql: ${TABLE}.NAME

  - measure: count
    type: count
    drill_fields: [name]

