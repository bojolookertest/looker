- view: party_role
  sql_table_name: PARTY_ROLE
  fields:

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

  - dimension: party_id
    type: int
    # hidden: true
    sql: ${TABLE}.PARTY_ID

  - dimension: role_id
    type: int
    sql: ${TABLE}.ROLE_ID

  - dimension: role_type_code
    sql: ${TABLE}.ROLE_TYPE_CODE

  - measure: count
    type: count
    drill_fields: [party.party_id, party.name]

