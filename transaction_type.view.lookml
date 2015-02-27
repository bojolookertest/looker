- view: transaction_type
  sql_table_name: TRANSACTION_TYPE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: user_description
    sql: ${TABLE}.USER_DESCRIPTION

  - measure: count
    type: count
    drill_fields: [id, transaction.count, transaction_cost.count]

