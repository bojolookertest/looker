- view: hire
  sql_table_name: HIRE
  fields:

  - dimension: hire_id
    primary_key: true
    type: int
    sql: ${TABLE}.HIRE_ID

  - dimension: award
    type: number
    sql: ${TABLE}.AWARD

  - dimension: comp_owner_id
    type: int
    sql: ${TABLE}.COMP_OWNER_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: currency_code
    sql: ${TABLE}.CURRENCY_CODE

  - dimension_group: hire
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.HIRE_DATE

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

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
    drill_fields: [hire_id, submission.submission_id]

  - measure: total_spend
    type: sum
    sql: ${award}
    drill_fields: [person.email_address, total_spend]
  