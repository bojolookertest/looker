- view: recruiter_assessment_type
  sql_table_name: RECRUITER_ASSESSMENT_TYPE
  fields:

  - dimension: code
    sql: ${TABLE}.CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - measure: count
    type: count
    drill_fields: []

