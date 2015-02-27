- view: company_metadata
  sql_table_name: COMPANY_METADATA
  fields:

  - dimension: company_id
    type: int
    # hidden: true
    sql: ${TABLE}.COMPANY_ID

  - dimension: is_100_k
    type: yesno
    sql: ${TABLE}.IS_100K

  - measure: count
    type: count
    drill_fields: [company.company_id, company.name, company.legal_company_name]

