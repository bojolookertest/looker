- view: report_preference_company
  sql_table_name: REPORT_PREFERENCE_COMPANY
  fields:

  - dimension: company_id
    type: int
    # hidden: true
    sql: ${TABLE}.COMPANY_ID

  - dimension: report_preference_id
    type: int
    # hidden: true
    sql: ${TABLE}.REPORT_PREFERENCE_ID

  - measure: count
    type: count
    drill_fields: [report_preference.report_preference_id, company.company_id, company.name, company.legal_company_name]

