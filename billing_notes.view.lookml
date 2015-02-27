- view: billing_notes
  sql_table_name: BILLING_NOTES
  fields:

  - dimension: billing_note_id
    primary_key: true
    type: int
    sql: ${TABLE}.BILLING_NOTE_ID

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

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: note_text
    sql: ${TABLE}.NOTE_TEXT

  - measure: count
    type: count
    drill_fields: [billing_note_id, company.company_id, company.name, company.legal_company_name]

