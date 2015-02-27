- view: external_accounting
  sql_table_name: EXTERNAL_ACCOUNTING
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: transaction_id
    # hidden: true
    sql: ${TABLE}.TRANSACTION_ID

  - measure: count
    type: count
    drill_fields: [id, transaction.id, bounty_request.count]

