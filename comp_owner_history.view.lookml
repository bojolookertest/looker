- view: comp_owner_history
  sql_table_name: COMP_OWNER_HISTORY
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: comp_owner_type_id
    # hidden: true
    sql: ${TABLE}.COMP_OWNER_TYPE_ID

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

  - dimension: new_comp_owner_id
    type: int
    sql: ${TABLE}.NEW_COMP_OWNER_ID

  - dimension: old_comp_owner_id
    type: int
    sql: ${TABLE}.OLD_COMP_OWNER_ID

  - dimension: source_id
    type: int
    sql: ${TABLE}.SOURCE_ID

  - measure: count
    type: count
    drill_fields: [id]

