- view: withdrawal_request
  sql_table_name: WITHDRAWAL_REQUEST
  fields:

  - dimension: withdrawal_request_id
    primary_key: true
    type: int
    sql: ${TABLE}.WITHDRAWAL_REQUEST_ID

  - dimension: address_id
    type: int
    # hidden: true
    sql: ${TABLE}.ADDRESS_ID

  - dimension: attention
    sql: ${TABLE}.ATTENTION

  - dimension_group: completion
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.COMPLETION_DATE

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: memo
    sql: ${TABLE}.MEMO

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: payee
    sql: ${TABLE}.PAYEE

  - dimension: transaction_id
    type: int
    # hidden: true
    sql: ${TABLE}.TRANSACTION_ID

  - dimension: withdrawal_request_status_code
    sql: ${TABLE}.WITHDRAWAL_REQUEST_STATUS_CODE

  - measure: count
    type: count
    drill_fields: [withdrawal_request_id, address.address_id, transaction.id]

