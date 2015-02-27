- view: stored_file
  sql_table_name: STORED_FILE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: candidate_id
    type: int
    # hidden: true
    sql: ${TABLE}.CANDIDATE_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: file_system_id
    type: int
    # hidden: true
    sql: ${TABLE}.FILE_SYSTEM_ID

  - dimension: filename
    sql: ${TABLE}.FILENAME

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

  - dimension: user_supplied_filename
    sql: ${TABLE}.USER_SUPPLIED_FILENAME

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - filename
    - user_supplied_filename
    - person.person_id
    - person.first_name
    - person.last_name
    - candidate.candidate_id
    - candidate.name
    - file_system.id

