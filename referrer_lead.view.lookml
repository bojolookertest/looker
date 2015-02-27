- view: referrer_lead
  sql_table_name: REFERRER_LEAD
  fields:

  - dimension: referrer_lead_id
    primary_key: true
    type: int
    sql: ${TABLE}.REFERRER_LEAD_ID

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

  - measure: count
    type: count
    drill_fields: [referrer_lead_id, person.person_id, person.first_name, person.last_name]

