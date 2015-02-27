- view: template
  sql_table_name: TEMPLATE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: template_name
    sql: ${TABLE}.TEMPLATE_NAME

  - dimension: template_path
    sql: ${TABLE}.TEMPLATE_PATH

  - dimension: type_name
    sql: ${TABLE}.TYPE_NAME

  - measure: count
    type: count
    drill_fields: [id, template_name, type_name]

