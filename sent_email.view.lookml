- view: sent_email
  sql_table_name: SENT_EMAIL
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: application_tracking_id
    sql: ${TABLE}.APPLICATION_TRACKING_ID

  - dimension: bcc_field
    sql: ${TABLE}.BCC_FIELD

  - dimension: cc_field
    sql: ${TABLE}.CC_FIELD

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: email_vendor
    type: int
    sql: ${TABLE}.EMAIL_VENDOR

  - dimension: email_vendor_reference
    sql: ${TABLE}.EMAIL_VENDOR_REFERENCE

  - dimension: from_field
    sql: ${TABLE}.FROM_FIELD

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension_group: original_send
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ORIGINAL_SEND_DATE

  - dimension: reply_to_field
    sql: ${TABLE}.REPLY_TO_FIELD

  - dimension_group: sent
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.SENT_DATE

  - dimension: source_party_id
    type: int
    sql: ${TABLE}.SOURCE_PARTY_ID

  - dimension: subject
    sql: ${TABLE}.SUBJECT

  - dimension: to_field
    sql: ${TABLE}.TO_FIELD

  - dimension: type_id
    type: int
    sql: ${TABLE}.TYPE_ID

  - measure: count
    type: count
    drill_fields: [id, sent_email_attachment.count, sent_email_content.count]

