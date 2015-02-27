- view: message_context_reference_type
  sql_table_name: MESSAGE_CONTEXT_REFERENCE_TYPE
  fields:

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: reference_type
    sql: ${TABLE}.REFERENCE_TYPE

  - measure: count
    type: count
    drill_fields: []

