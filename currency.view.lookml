- view: currency
  sql_table_name: CURRENCY
  fields:

  - dimension: code
    sql: ${TABLE}.CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: email_description
    sql: ${TABLE}.EMAIL_DESCRIPTION

  - dimension: salary_maximum
    type: number
    sql: ${TABLE}.SALARY_MAXIMUM

  - dimension: salary_minimum
    type: number
    sql: ${TABLE}.SALARY_MINIMUM

  - dimension: user_description
    sql: ${TABLE}.USER_DESCRIPTION

  - dimension: visible_flag
    sql: ${TABLE}.VISIBLE_FLAG

  - measure: count
    type: count
    drill_fields: []

