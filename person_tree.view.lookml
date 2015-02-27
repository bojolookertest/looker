- view: person_tree
  sql_table_name: PERSON_TREE
  fields:

  - dimension: person_tree_id
    primary_key: true
    type: int
    sql: ${TABLE}.PERSON_TREE_ID

  - dimension: child_id
    type: int
    sql: ${TABLE}.CHILD_ID

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

  - dimension: parent_id
    type: int
    sql: ${TABLE}.PARENT_ID

  - dimension: tree_type_code
    sql: ${TABLE}.TREE_TYPE_CODE

  - measure: count
    type: count
    drill_fields: [person_tree_id]

