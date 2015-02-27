- view: paypal_error_log
  sql_table_name: PAYPAL_ERROR_LOG
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: paypal_error_id
    type: int
    # hidden: true
    sql: ${TABLE}.PAYPAL_ERROR_ID

  - dimension: paypal_tx_log_id
    type: int
    # hidden: true
    sql: ${TABLE}.PAYPAL_TX_LOG_ID

  - measure: count
    type: count
    drill_fields: [id, paypal_error.id, paypal_tx_log.id]

