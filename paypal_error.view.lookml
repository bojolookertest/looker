- view: paypal_error
  sql_table_name: PAYPAL_ERROR
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: paypal_description
    sql: ${TABLE}.PAYPAL_DESCRIPTION

  - dimension: paypal_id
    type: int
    sql: ${TABLE}.PAYPAL_ID

  - measure: count
    type: count
    drill_fields: [id, paypal_error_log.count]

