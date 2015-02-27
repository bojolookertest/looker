- view: discount_multifill
  sql_table_name: DISCOUNT_MULTIFILL
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: discount_program_id
    type: int
    # hidden: true
    sql: ${TABLE}.DISCOUNT_PROGRAM_ID

  - dimension: party_id
    type: int
    # hidden: true
    sql: ${TABLE}.PARTY_ID

  - measure: count
    type: count
    drill_fields: [id, party.party_id, party.name, discount_program.id]

