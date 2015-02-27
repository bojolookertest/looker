- view: referral_slot
  sql_table_name: REFERRAL_SLOT
  fields:

  - dimension: referral_slot_id
    primary_key: true
    type: int
    sql: ${TABLE}.REFERRAL_SLOT_ID

  - dimension: act_mgr_id
    type: int
    sql: ${TABLE}.ACT_MGR_ID

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

  - dimension: filled_flag
    sql: ${TABLE}.FILLED_FLAG

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: monetized_flag
    sql: ${TABLE}.MONETIZED_FLAG

  - dimension: referral_code_used
    sql: ${TABLE}.REFERRAL_CODE_USED

  - dimension_group: referral_enrollment
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.REFERRAL_ENROLLMENT_DATE

  - dimension: referral_program_id
    type: int
    # hidden: true
    sql: ${TABLE}.REFERRAL_PROGRAM_ID

  - dimension: referral_slot_type_code
    sql: ${TABLE}.REFERRAL_SLOT_TYPE_CODE

  - dimension: referree_id
    type: int
    sql: ${TABLE}.REFERREE_ID

  - dimension: referrer_id
    type: int
    sql: ${TABLE}.REFERRER_ID

  - measure: count
    type: count
    drill_fields: [referral_slot_id, referral_program.id]

