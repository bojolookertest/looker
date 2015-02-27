- view: account_balance
  sql_table_name: ACCOUNT_BALANCE
  fields:

  - dimension: account_id
    type: int
    # hidden: true
    sql: ${TABLE}.account_id

  - dimension: amount
    type: number
    sql: ${TABLE}.AMOUNT

  - measure: count
    type: count
    drill_fields: [account.id]

