- view: comp_owner_type
  sql_table_name: COMP_OWNER_TYPE
  fields:

  - dimension: code
    primary_key: true
    sql: ${TABLE}.CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - measure: count
    type: count
    drill_fields: [comp_owner_history.count]

