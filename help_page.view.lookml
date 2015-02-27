- view: help_page
  sql_table_name: HELP_PAGE
  fields:

  - dimension: help_page_id
    primary_key: true
    type: int
    sql: ${TABLE}.HELP_PAGE_ID

  - dimension: help_path
    sql: ${TABLE}.HELP_PATH

  - dimension: jsp_path
    sql: ${TABLE}.JSP_PATH

  - measure: count
    type: count
    drill_fields: [help_page_id]

