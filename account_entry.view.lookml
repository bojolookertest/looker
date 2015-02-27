- view: account_entry
  sql_table_name: ACCOUNT_ENTRY
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: account_id
    type: int
    # hidden: true
    sql: ${TABLE}.ACCOUNT_ID

  - dimension: amount
    type: number
    sql: ${TABLE}.AMOUNT

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: transaction_id
    type: int
    # hidden: true
    sql: ${TABLE}.TRANSACTION_ID

  - measure: count
    type: count
    drill_fields: [id, transaction.id, account.id]

