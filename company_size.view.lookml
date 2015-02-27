- view: company_size
  sql_table_name: COMPANY_SIZE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - measure: count
    type: count
    drill_fields: [id, hiring_manager.count, marketing_info.count]

