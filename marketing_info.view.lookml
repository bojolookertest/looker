- view: marketing_info
  sql_table_name: MARKETING_INFO
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: company
    sql: ${TABLE}.COMPANY

  - dimension: company_size_id
    type: int
    # hidden: true
    sql: ${TABLE}.COMPANY_SIZE_ID

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: email
    sql: ${TABLE}.EMAIL

  - dimension: first_name
    sql: ${TABLE}.FIRST_NAME

  - dimension: industry_id
    type: int
    # hidden: true
    sql: ${TABLE}.INDUSTRY_ID

  - dimension: internal_recruiters
    sql: ${TABLE}.INTERNAL_RECRUITERS

  - dimension: job_category_id
    type: int
    # hidden: true
    sql: ${TABLE}.JOB_CATEGORY_ID

  - dimension: last_name
    sql: ${TABLE}.LAST_NAME

  - dimension: person_id
    type: int
    # hidden: true
    sql: ${TABLE}.PERSON_ID

  - dimension: phone
    sql: ${TABLE}.PHONE

  - dimension: profile_type
    sql: ${TABLE}.PROFILE_TYPE

  - dimension: referrer
    sql: ${TABLE}.REFERRER

  - dimension: title
    sql: ${TABLE}.TITLE

  - dimension: uses_headhunters
    sql: ${TABLE}.USES_HEADHUNTERS

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - last_name
    - first_name
    - industry.name
    - industry.parent_industry_id
    - job_category.id
    - job_category.name
    - person.person_id
    - person.first_name
    - person.last_name
    - company_size.id

