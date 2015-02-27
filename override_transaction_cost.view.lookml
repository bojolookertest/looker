- view: override_transaction_cost
  sql_table_name: OVERRIDE_TRANSACTION_COST
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: duration_in_days
    type: int
    sql: ${TABLE}.DURATION_IN_DAYS

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: monetary_amount
    type: number
    sql: ${TABLE}.MONETARY_AMOUNT

  - dimension: percentage_amount
    type: number
    sql: ${TABLE}.PERCENTAGE_AMOUNT

  - dimension: record_status_code
    sql: ${TABLE}.RECORD_STATUS_CODE

  - dimension: referral_program_id
    type: int
    # hidden: true
    sql: ${TABLE}.REFERRAL_PROGRAM_ID

  - dimension: starting_day
    type: int
    sql: ${TABLE}.STARTING_DAY

  - dimension: transaction_cost_id
    type: int
    # hidden: true
    sql: ${TABLE}.TRANSACTION_COST_ID

  - measure: count
    type: count
    drill_fields: [id, transaction_cost.id, referral_program.id]

