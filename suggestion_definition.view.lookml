- view: suggestion_definition
  sql_table_name: SUGGESTION_DEFINITION
  fields:

  - dimension: active
    sql: ${TABLE}.ACTIVE

  - dimension: bar_text_template
    sql: ${TABLE}.BAR_TEXT_TEMPLATE

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: default_priority
    type: int
    sql: ${TABLE}.DEFAULT_PRIORITY

  - dimension: definition_id
    type: int
    sql: ${TABLE}.DEFINITION_ID

  - dimension: force_recalc
    sql: ${TABLE}.FORCE_RECALC

  - dimension: help_text_template
    sql: ${TABLE}.HELP_TEXT_TEMPLATE

  - dimension: link_url_template
    sql: ${TABLE}.LINK_URL_TEMPLATE

  - dimension: list_text_template
    sql: ${TABLE}.LIST_TEXT_TEMPLATE

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: name
    sql: ${TABLE}.NAME

  - measure: count
    type: count
    drill_fields: [name]

