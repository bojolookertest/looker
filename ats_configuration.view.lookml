- view: ats_configuration
  sql_table_name: ATS_CONFIGURATION
  fields:

  - dimension: ats_question_id
    type: int
    # hidden: true
    sql: ${TABLE}.ATS_QUESTION_ID

  - dimension: company_id
    type: int
    # hidden: true
    sql: ${TABLE}.COMPANY_ID

  - measure: count
    type: count
    drill_fields: [ats_question.ats_question_id, company.company_id, company.name, company.legal_company_name]

