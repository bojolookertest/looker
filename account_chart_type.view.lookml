- view: account_chart_type
  sql_table_name: ACCOUNT_CHART_TYPE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: account_type_code
    sql: ${TABLE}.ACCOUNT_TYPE_CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: display_flag
    sql: ${TABLE}.DISPLAY_FLAG

  - dimension: long_description
    sql: ${TABLE}.LONG_DESCRIPTION

  - dimension: lookup_id
    type: int
    sql: ${TABLE}.LOOKUP_ID

  - dimension: poster_flag
    sql: ${TABLE}.POSTER_FLAG

  - dimension: recruiter_flag
    sql: ${TABLE}.RECRUITER_FLAG

  - measure: count
    type: count
    drill_fields: [id, account.count]

