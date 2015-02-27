- view: years_experience_type
  sql_table_name: YEARS_EXPERIENCE_TYPE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - measure: count
    type: count
    drill_fields: [id, job_posting.count]

