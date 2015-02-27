- view: company_relation
  sql_table_name: COMPANY_RELATION
  fields:

  - dimension: company_relation_id
    primary_key: true
    type: int
    sql: ${TABLE}.COMPANY_RELATION_ID

  - dimension: company_permission_code
    sql: ${TABLE}.COMPANY_PERMISSION_CODE

  - dimension: source_id
    type: int
    sql: ${TABLE}.SOURCE_ID

  - dimension: target_id
    type: int
    sql: ${TABLE}.TARGET_ID

  - measure: count
    type: count
    drill_fields: [company_relation_id]

