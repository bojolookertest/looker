- view: company_diversity_status
  sql_table_name: COMPANY_DIVERSITY_STATUS
  fields:

  - dimension: company_id
    type: int
    # hidden: true
    sql: ${TABLE}.COMPANY_ID

  - dimension: diversity_status_code
    sql: ${TABLE}.DIVERSITY_STATUS_CODE

  - measure: count
    type: count
    drill_fields: [company.company_id, company.name, company.legal_company_name]

