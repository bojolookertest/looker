- view: pending_email_recipient
  sql_table_name: PENDING_EMAIL_RECIPIENT
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: pending_email_id
    type: int
    # hidden: true
    sql: ${TABLE}.PENDING_EMAIL_ID

  - dimension: recipient_email_address
    sql: ${TABLE}.RECIPIENT_EMAIL_ADDRESS

  - dimension: recipient_is_party
    type: yesno
    sql: ${TABLE}.RECIPIENT_IS_PARTY

  - dimension: recipient_party_id
    type: int
    sql: ${TABLE}.RECIPIENT_PARTY_ID

  - dimension: recipient_type
    sql: ${TABLE}.RECIPIENT_TYPE

  - measure: count
    type: count
    drill_fields: [id, pending_email.id]

