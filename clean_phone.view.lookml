- view: clean_phone
  sql_table_name: CLEAN_PHONE
  fields:

  - dimension: clean_phone
    sql: ${TABLE}.CLEAN_PHONE

  - dimension: person_id
    type: int
    # hidden: true
    sql: ${TABLE}.PERSON_ID

  - measure: count
    type: count
    drill_fields: [person.person_id, person.first_name, person.last_name]

