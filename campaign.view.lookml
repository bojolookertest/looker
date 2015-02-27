- view: campaign
  sql_table_name: CAMPAIGN
  fields:

  - dimension: campaign_id
    primary_key: true
    type: int
    sql: ${TABLE}.CAMPAIGN_ID

  - dimension: active
    sql: ${TABLE}.ACTIVE

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

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: reference_code
    sql: ${TABLE}.REFERENCE_CODE

  - dimension: url
    sql: ${TABLE}.URL

  - measure: count
    type: count
    drill_fields: [campaign_id, name, campaign_template.campaign_template_id, campaign_template.name, campaign_parameter.count]

