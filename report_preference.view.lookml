- view: report_preference
  sql_table_name: REPORT_PREFERENCE
  fields:

  - dimension: report_preference_id
    primary_key: true
    type: int
    sql: ${TABLE}.REPORT_PREFERENCE_ID

  - dimension: business_unit
    sql: ${TABLE}.BUSINESS_UNIT

  - dimension: date_range
    sql: ${TABLE}.DATE_RANGE

  - dimension: job_category_id
    type: int
    # hidden: true
    sql: ${TABLE}.JOB_CATEGORY_ID

  - dimension: selected_user_id
    type: int
    sql: ${TABLE}.SELECTED_USER_ID

  - dimension: user_id
    type: int
    sql: ${TABLE}.USER_ID

  - measure: count
    type: count
    drill_fields: [report_preference_id, job_category.id, job_category.name, report_preference_company.count]

