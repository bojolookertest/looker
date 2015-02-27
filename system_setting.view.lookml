- view: system_setting
  sql_table_name: SYSTEM_SETTING
  fields:

  - dimension: setting_description
    sql: ${TABLE}.SETTING_DESCRIPTION

  - dimension: setting_id
    type: int
    sql: ${TABLE}.SETTING_ID

  - dimension: setting_int_value
    type: int
    sql: ${TABLE}.SETTING_INT_VALUE

  - dimension: setting_string_value
    sql: ${TABLE}.SETTING_STRING_VALUE

  - measure: count
    type: count
    drill_fields: []

