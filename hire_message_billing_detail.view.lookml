- view: hire_message_billing_detail
  sql_table_name: HIRE_MESSAGE_BILLING_DETAIL
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: billing_detail
    sql: ${TABLE}.BILLING_DETAIL

  - measure: count
    type: count
    drill_fields: [id]

