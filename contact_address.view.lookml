- view: contact_address
  sql_table_name: CONTACT_ADDRESS
  fields:

  - dimension: contact_address_id
    primary_key: true
    type: int
    sql: ${TABLE}.CONTACT_ADDRESS_ID

  - dimension_group: creation_timestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_TIMESTAMP

  - dimension: email_address
    sql: ${TABLE}.EMAIL_ADDRESS

  - dimension_group: last_sent_datetime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAST_SENT_DATETIME

  - dimension: sender_person_id
    type: int
    sql: ${TABLE}.SENDER_PERSON_ID

  - measure: count
    type: count
    drill_fields: [contact_address_id]

