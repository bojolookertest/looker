- view: firm_size
  sql_table_name: FIRM_SIZE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - measure: count
    type: count
    drill_fields: [id, recruiter.count]

