- view: paypal_tx_log
  sql_table_name: PAYPAL_TX_LOG
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: avs_code
    sql: ${TABLE}.AVS_CODE

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: cvv2_code
    sql: ${TABLE}.CVV2_CODE

  - dimension: pp_transaction_id
    sql: ${TABLE}.PP_TRANSACTION_ID

  - dimension: transaction_id
    type: int
    # hidden: true
    sql: ${TABLE}.TRANSACTION_ID

  - measure: count
    type: count
    drill_fields: [id, transaction.id, paypal_error_log.count]

