- view: metric
  sql_table_name: METRIC
  fields:

  - dimension: metric_id
    primary_key: true
    type: int
    sql: ${TABLE}.METRIC_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: metric_definition_id
    type: int
    # hidden: true
    sql: ${TABLE}.METRIC_DEFINITION_ID

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: person_id
    type: int
    # hidden: true
    sql: ${TABLE}.PERSON_ID

  - dimension: valid
    sql: ${TABLE}.VALID

  - dimension: value
    type: number
    sql: ${TABLE}.VALUE

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - metric_id
    - metric_definition.name
    - metric_definition.display_name
    - person.person_id
    - person.first_name
    - person.last_name

