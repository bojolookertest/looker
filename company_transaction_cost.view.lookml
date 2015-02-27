- view: company_transaction_cost
  sql_table_name: COMPANY_TRANSACTION_COST
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: contract_id
    type: int
    # hidden: true
    sql: ${TABLE}.CONTRACT_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: currency_code
    sql: ${TABLE}.CURRENCY_CODE

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: monetary_amount
    type: number
    sql: ${TABLE}.MONETARY_AMOUNT

  - dimension: party_id
    type: int
    # hidden: true
    sql: ${TABLE}.PARTY_ID

  - dimension: percentage_amount
    type: number
    sql: ${TABLE}.PERCENTAGE_AMOUNT

  - dimension: record_status_code
    sql: ${TABLE}.RECORD_STATUS_CODE

  - dimension: transaction_cost_id
    type: int
    # hidden: true
    sql: ${TABLE}.TRANSACTION_COST_ID

  - measure: count
    type: count
    drill_fields: [id, contract.contract_id, party.party_id, party.name, transaction_cost.id]

