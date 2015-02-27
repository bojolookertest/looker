- view: w9_link
  sql_table_name: W9_LINK
  fields:

  - dimension: w9_link_id
    primary_key: true
    type: int
    sql: ${TABLE}.W9_LINK_ID

  - dimension: link_id
    type: int
    sql: ${TABLE}.LINK_ID

  - dimension: person_id
    type: int
    # hidden: true
    sql: ${TABLE}.PERSON_ID

  - measure: count
    type: count
    drill_fields: [w9_link_id, person.person_id, person.first_name, person.last_name]

