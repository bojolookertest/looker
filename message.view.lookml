- view: message
  sql_table_name: MESSAGE
  fields:

  - dimension: message_id
    primary_key: true
    type: int
    sql: ${TABLE}.MESSAGE_ID

  - dimension: parent_message_id
    type: int
    # hidden: true
    sql: ${TABLE}.PARENT_MESSAGE_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: deleted_by_recipient
    sql: ${TABLE}.DELETED_BY_RECIPIENT

  - dimension: deleted_by_sender
    sql: ${TABLE}.DELETED_BY_SENDER

  - dimension: message_source
    sql: ${TABLE}.MESSAGE_SOURCE

  - dimension: message_status_code
    sql: ${TABLE}.MESSAGE_STATUS_CODE

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: read_by_recipient
    sql: ${TABLE}.READ_BY_RECIPIENT

  - dimension: read_by_sender
    sql: ${TABLE}.READ_BY_SENDER

  - dimension_group: read
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.READ_DATE

  - dimension: receiving_person_id
    type: int
    sql: ${TABLE}.RECEIVING_PERSON_ID

  - dimension: sending_person_id
    type: int
    sql: ${TABLE}.SENDING_PERSON_ID

  - dimension: subject
    sql: ${TABLE}.SUBJECT

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - parent_message_id
    - message.parent_message_id
    - bounty_connect_audit.count
    - forwarded_resume.count
    - hire_message.count
    - hire_response.count
    - job_posting_invitation.count
    - job_posting_request.count
    - job_posting_response.count
    - message.count
    - message_context_reference.count
    - message_email_recipient.count

