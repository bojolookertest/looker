- view: user_notification
  sql_table_name: USER_NOTIFICATION
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: acknowledgement
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ACKNOWLEDGEMENT_DATE

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: person_id
    type: int
    # hidden: true
    sql: ${TABLE}.PERSON_ID

  - dimension: posting_id
    type: int
    sql: ${TABLE}.POSTING_ID

  - dimension: submission_id
    type: int
    # hidden: true
    sql: ${TABLE}.SUBMISSION_ID

  - dimension: type
    sql: ${TABLE}.TYPE

  - measure: count
    type: count
    drill_fields: [id, person.person_id, person.first_name, person.last_name, submission.submission_id]

