- view: transaction_cost
  sql_table_name: TRANSACTION_COST
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: currency_code
    sql: ${TABLE}.CURRENCY_CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: lookup_key
    sql: ${TABLE}.LOOKUP_KEY

  - dimension: monetary_amount
    type: number
    sql: ${TABLE}.MONETARY_AMOUNT

  - dimension: percentage_amount
    type: number
    sql: ${TABLE}.PERCENTAGE_AMOUNT

  - dimension: referral_program_id
    type: int
    # hidden: true
    sql: ${TABLE}.REFERRAL_PROGRAM_ID

  - dimension: transaction_type_id
    type: int
    # hidden: true
    sql: ${TABLE}.TRANSACTION_TYPE_ID

  - measure: count
    type: count
    drill_fields: [id, referral_program.id, transaction_type.id, company_transaction_cost.count, override_transaction_cost.count]

