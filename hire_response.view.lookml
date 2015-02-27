- view: hire_response
  sql_table_name: HIRE_RESPONSE
  fields:

  - dimension: hire_response_id
    primary_key: true
    type: int
    sql: ${TABLE}.HIRE_RESPONSE_ID

  - dimension: hire_response_type_code
    sql: ${TABLE}.HIRE_RESPONSE_TYPE_CODE

  - dimension: message_id
    type: int
    # hidden: true
    sql: ${TABLE}.MESSAGE_ID

  - dimension: submission_id
    type: int
    # hidden: true
    sql: ${TABLE}.SUBMISSION_ID

  - measure: count
    type: count
    drill_fields: [hire_response_id, message.parent_message_id, submission.submission_id]

