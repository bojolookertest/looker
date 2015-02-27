- view: contract_backup
  sql_table_name: CONTRACT_BACKUP
  fields:

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

  - dimension_group: end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.END_DATE

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: source_party_id
    type: int
    sql: ${TABLE}.SOURCE_PARTY_ID

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.START_DATE

  - dimension: target_party_id
    type: int
    sql: ${TABLE}.TARGET_PARTY_ID

  - measure: count
    type: count
    drill_fields: [contract.contract_id]

