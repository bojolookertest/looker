- view: discount_program
  sql_table_name: DISCOUNT_PROGRAM
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: default_program
    sql: ${TABLE}.DEFAULT_PROGRAM

  - dimension: nbr_fills
    type: int
    sql: ${TABLE}.NBR_FILLS

  - dimension: payout
    type: number
    sql: ${TABLE}.PAYOUT

  - dimension: period
    type: int
    sql: ${TABLE}.PERIOD

  - measure: count
    type: count
    drill_fields: [id, discount_multifill.count, transaction.count]

