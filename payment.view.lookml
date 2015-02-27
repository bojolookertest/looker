- view: payment
  sql_table_name: PAYMENT
  fields:

  - dimension: payment_id
    primary_key: true
    type: int
    sql: ${TABLE}.PAYMENT_ID

  - dimension: award_status
    sql: ${TABLE}.AWARD_STATUS

  - dimension: count_as_on_time
    sql: ${TABLE}.COUNT_AS_ON_TIME

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: hire_id
    type: int
    # hidden: true
    sql: ${TABLE}.HIRE_ID

  - dimension: invoice_number
    sql: ${TABLE}.INVOICE_NUMBER

  - dimension_group: last_payment
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAST_PAYMENT_DATE

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension_group: next_action
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.NEXT_ACTION_DATE

  - dimension: payment_status
    sql: ${TABLE}.PAYMENT_STATUS

  - measure: count
    type: count
    drill_fields: [payment_id, hire.hire_id]

