- view: icims_job_category_map
  sql_table_name: ICIMS_JOB_CATEGORY_MAP
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: icims_job_category_id
    sql: ${TABLE}.ICIMS_JOB_CATEGORY_ID

  - dimension: icims_job_category_name
    sql: ${TABLE}.ICIMS_JOB_CATEGORY_NAME

  - dimension: job_category_id
    type: int
    # hidden: true
    sql: ${TABLE}.JOB_CATEGORY_ID

  - measure: count
    type: count
    drill_fields: [id, icims_job_category_name, job_category.id, job_category.name]

