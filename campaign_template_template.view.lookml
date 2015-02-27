- view: campaign_template_template
  sql_table_name: CAMPAIGN_TEMPLATE_TEMPLATE
  fields:

  - dimension: campaign_template_template_id
    primary_key: true
    type: int
    sql: ${TABLE}.CAMPAIGN_TEMPLATE_TEMPLATE_ID

  - dimension: campaign_template_id
    type: int
    # hidden: true
    sql: ${TABLE}.CAMPAIGN_TEMPLATE_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: data
    sql: ${TABLE}.DATA

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: type
    sql: ${TABLE}.TYPE

  - measure: count
    type: count
    drill_fields: [campaign_template_template_id, campaign_template.campaign_template_id, campaign_template.name]

