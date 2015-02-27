- view: pending_email
  sql_table_name: PENDING_EMAIL
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: application_tracking_id
    sql: ${TABLE}.APPLICATION_TRACKING_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: data_model_method
    sql: ${TABLE}.DATA_MODEL_METHOD

  - dimension: failed_attempts
    type: int
    sql: ${TABLE}.FAILED_ATTEMPTS

  - dimension: from_email
    sql: ${TABLE}.FROM_EMAIL

  - dimension_group: last_attempt
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAST_ATTEMPT

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: reply_to_email
    sql: ${TABLE}.REPLY_TO_EMAIL

  - dimension_group: send
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.SEND_DATE

  - dimension: send_immediately
    type: yesno
    sql: ${TABLE}.SEND_IMMEDIATELY

  - dimension: sending_party_id
    type: int
    sql: ${TABLE}.SENDING_PARTY_ID

  - dimension: source_party_id
    type: int
    sql: ${TABLE}.SOURCE_PARTY_ID

  - dimension: subject
    sql: ${TABLE}.SUBJECT

  - dimension: type_id
    type: int
    sql: ${TABLE}.TYPE_ID

  - measure: count
    type: count
    drill_fields: [id, pending_email_attachment.count, pending_email_content.count, pending_email_error.count, pending_email_recipient.count]

