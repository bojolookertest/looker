- view: hire_message
  sql_table_name: HIRE_MESSAGE
  fields:

  - dimension: hire_message_id
    primary_key: true
    type: int
    sql: ${TABLE}.HIRE_MESSAGE_ID

  - dimension: billing_contact_email
    sql: ${TABLE}.BILLING_CONTACT_EMAIL

  - dimension: billing_contact_name
    sql: ${TABLE}.BILLING_CONTACT_NAME

  - dimension: billing_contact_phone
    sql: ${TABLE}.BILLING_CONTACT_PHONE

  - dimension: billing_contact_phone_extension
    sql: ${TABLE}.BILLING_CONTACT_PHONE_EXTENSION

  - dimension: billing_message_id
    type: int
    sql: ${TABLE}.BILLING_MESSAGE_ID

  - dimension: currency_code
    sql: ${TABLE}.CURRENCY_CODE

  - dimension_group: hire
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.HIRE_DATE

  - dimension: message_id
    type: int
    # hidden: true
    sql: ${TABLE}.MESSAGE_ID

  - dimension: purchase_order
    sql: ${TABLE}.PURCHASE_ORDER

  - dimension: salary
    type: number
    sql: ${TABLE}.SALARY

  - dimension: salary_percent_award
    type: number
    sql: ${TABLE}.SALARY_PERCENT_AWARD

  - dimension: submission_id
    type: int
    # hidden: true
    sql: ${TABLE}.SUBMISSION_ID

  - measure: count
    type: count
    drill_fields: [hire_message_id, billing_contact_name, message.parent_message_id, submission.submission_id]

