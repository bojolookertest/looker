- view: special_contract_term
  sql_table_name: SPECIAL_CONTRACT_TERM
  fields:

  - dimension: special_contract_term_id
    primary_key: true
    type: int
    sql: ${TABLE}.SPECIAL_CONTRACT_TERM_ID

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

  - dimension_group: expiration
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EXPIRATION_DATE

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: term
    sql: ${TABLE}.TERM

  - measure: count
    type: count
    drill_fields: [special_contract_term_id, contract.contract_id]

