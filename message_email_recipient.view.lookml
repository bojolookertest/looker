- view: message_email_recipient
  sql_table_name: MESSAGE_EMAIL_RECIPIENT
  fields:

  - dimension: message_email_recipient_id
    primary_key: true
    type: int
    sql: ${TABLE}.MESSAGE_EMAIL_RECIPIENT_ID

  - dimension: email_address
    sql: ${TABLE}.EMAIL_ADDRESS

  - dimension: message_id
    type: int
    # hidden: true
    sql: ${TABLE}.MESSAGE_ID

  - dimension: recipient_type_code
    sql: ${TABLE}.RECIPIENT_TYPE_CODE

  - measure: count
    type: count
    drill_fields: [message_email_recipient_id, message.parent_message_id]

