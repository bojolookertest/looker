- view: user_preference
  sql_table_name: USER_PREFERENCE
  fields:

  - dimension: user_preference_id
    primary_key: true
    type: int
    sql: ${TABLE}.USER_PREFERENCE_ID

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

  - dimension: person_id
    type: int
    # hidden: true
    sql: ${TABLE}.PERSON_ID

  - dimension: preference_type_id
    type: int
    sql: ${TABLE}.PREFERENCE_TYPE_ID

  - dimension: preference_value
    sql: ${TABLE}.PREFERENCE_VALUE

  - measure: count
    type: count
    drill_fields: [user_preference_id, person.person_id, person.first_name, person.last_name]

