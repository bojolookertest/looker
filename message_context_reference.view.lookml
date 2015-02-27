- view: message_context_reference
  sql_table_name: MESSAGE_CONTEXT_REFERENCE
  fields:

  - dimension: message_context_id
    type: int
    sql: ${TABLE}.MESSAGE_CONTEXT_ID

  - dimension: message_id
    type: int
    # hidden: true
    sql: ${TABLE}.MESSAGE_ID

  - dimension: processed
    type: yesno
    sql: ${TABLE}.PROCESSED

  - dimension: reference_id
    type: int
    sql: ${TABLE}.REFERENCE_ID

  - dimension: reference_type
    sql: ${TABLE}.REFERENCE_TYPE

  - measure: count
    type: count
    drill_fields: [message.parent_message_id]

