- view: note
  sql_table_name: NOTE
  fields:

  - dimension: note_id
    primary_key: true
    type: int
    sql: ${TABLE}.NOTE_ID

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

  - dimension: deleted_by
    type: int
    sql: ${TABLE}.DELETED_BY

  - dimension: deleted_flag
    sql: ${TABLE}.DELETED_FLAG

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: public_flag
    sql: ${TABLE}.PUBLIC_FLAG

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - note_id
    - company.company_id
    - company.name
    - company.legal_company_name
    - candidate_note.count
    - currency_conversion_note.count
    - employer_note.count
    - recruiter_note.count

