- view: person_search_string
  sql_table_name: PERSON_SEARCH_STRING
  fields:

  - dimension: instances
    type: int
    sql: ${TABLE}.COUNT

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: notify
    type: yesno
    sql: ${TABLE}.NOTIFY

  - dimension: person_id
    type: int
    # hidden: true
    sql: ${TABLE}.PERSON_ID

  - dimension: search_string_id
    type: int
    # hidden: true
    sql: ${TABLE}.SEARCH_STRING_ID

  - dimension: specialty
    type: yesno
    sql: ${TABLE}.SPECIALTY

  - measure: count
    type: count
    drill_fields: [name, person.person_id, person.first_name, person.last_name, search_string.id]

