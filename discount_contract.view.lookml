- view: discount_contract
  sql_table_name: DISCOUNT_CONTRACT
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: discount_percentage
    type: number
    sql: ${TABLE}.DISCOUNT_PERCENTAGE

  - dimension: source_party_id
    type: int
    sql: ${TABLE}.SOURCE_PARTY_ID

  - dimension: target_party_id
    type: int
    sql: ${TABLE}.TARGET_PARTY_ID

  - measure: count
    type: count
    drill_fields: [id]

