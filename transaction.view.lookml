- view: transaction
  sql_table_name: TRANSACTION
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: accounting
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ACCOUNTING_DATE

  - dimension: comp_owner_id
    type: int
    sql: ${TABLE}.COMP_OWNER_ID

  - dimension: company_tx_cost_source
    type: int
    sql: ${TABLE}.COMPANY_TX_COST_SOURCE

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: discount_program_id
    type: int
    # hidden: true
    sql: ${TABLE}.DISCOUNT_PROGRAM_ID

  - dimension: info
    sql: ${TABLE}.INFO

  - dimension: job_posting_id
    type: int
    # hidden: true
    sql: ${TABLE}.JOB_POSTING_ID

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: pending_flag
    sql: ${TABLE}.PENDING_FLAG

  - dimension: submission_id
    type: int
    # hidden: true
    sql: ${TABLE}.SUBMISSION_ID

  - dimension: transaction_type_id
    type: int
    # hidden: true
    sql: ${TABLE}.TRANSACTION_TYPE_ID

  - dimension: tx_currency_note_id
    type: int
    sql: ${TABLE}.TX_CURRENCY_NOTE_ID

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - submission.submission_id
    - job_posting.original_job_posting_id
    - transaction_type.id
    - discount_program.id
    - account_entry.count
    - external_accounting.count
    - paypal_tx_log.count
    - transaction_reporting_party.count
    - withdrawal_request.count

