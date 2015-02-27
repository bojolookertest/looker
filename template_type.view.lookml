- view: template_type
  sql_table_name: TEMPLATE_TYPE
  fields:

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: name
    sql: ${TABLE}.NAME

  - measure: count
    type: count
    drill_fields: [name]

