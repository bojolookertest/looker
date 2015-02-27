- view: monthly_report
  sql_table_name: MONTHLY_REPORT
  fields:

  - dimension: company_id
    type: int
    # hidden: true
    sql: ${TABLE}.COMPANY_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: month
    type: int
    sql: ${TABLE}.MONTH

  - dimension: report_id
    type: int
    sql: ${TABLE}.REPORT_ID

  - dimension: stored_document_id
    type: int
    # hidden: true
    sql: ${TABLE}.STORED_DOCUMENT_ID

  - dimension: year
    type: int
    sql: ${TABLE}.YEAR

  - measure: count
    type: count
    drill_fields: [stored_document.id, stored_document.user_supplied_filename, company.company_id, company.name, company.legal_company_name]

