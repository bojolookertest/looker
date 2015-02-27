- view: icims_industry_map
  sql_table_name: ICIMS_INDUSTRY_MAP
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: icims_industry_id
    sql: ${TABLE}.ICIMS_INDUSTRY_ID

  - dimension: icims_industry_name
    sql: ${TABLE}.ICIMS_INDUSTRY_NAME

  - dimension: industry_id
    type: int
    # hidden: true
    sql: ${TABLE}.INDUSTRY_ID

  - measure: count
    type: count
    drill_fields: [id, icims_industry_name, industry.name, industry.parent_industry_id]

