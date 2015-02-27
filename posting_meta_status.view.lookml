- view: posting_meta_status
  sql_table_name: POSTING_META_STATUS
  fields:

  - dimension: meta_posting_status_code
    sql: ${TABLE}.META_POSTING_STATUS_CODE

  - dimension: meta_posting_status_description
    sql: ${TABLE}.META_POSTING_STATUS_DESCRIPTION

  - dimension: posting_status_code
    sql: ${TABLE}.POSTING_STATUS_CODE

  - measure: count
    type: count
    drill_fields: []

