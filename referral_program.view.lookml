- view: referral_program
  sql_table_name: REFERRAL_PROGRAM
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: current_program_flag
    sql: ${TABLE}.CURRENT_PROGRAM_FLAG

  - dimension: duration_in_days
    type: int
    sql: ${TABLE}.DURATION_IN_DAYS

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - job_posting.count
    - override_transaction_cost.count
    - person.count
    - referral_slot.count
    - temp_person.count
    - transaction_cost.count

