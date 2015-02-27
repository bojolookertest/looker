- view: company_award_question
  sql_table_name: COMPANY_AWARD_QUESTION
  fields:

  - dimension: award_question_id
    type: int
    # hidden: true
    sql: ${TABLE}.AWARD_QUESTION_ID

  - dimension: company_id
    type: int
    # hidden: true
    sql: ${TABLE}.COMPANY_ID

  - measure: count
    type: count
    drill_fields: [award_question.award_question_id, company.company_id, company.name, company.legal_company_name]

