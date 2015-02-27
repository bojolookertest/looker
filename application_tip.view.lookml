- view: application_tip
  sql_table_name: APPLICATION_TIP
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: type_code
    sql: ${TABLE}.TYPE_CODE

  - measure: count
    type: count
    drill_fields: [id]

