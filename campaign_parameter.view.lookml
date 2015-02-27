- view: campaign_parameter
  sql_table_name: CAMPAIGN_PARAMETER
  fields:

  - dimension: campaign_parameter_id
    primary_key: true
    type: int
    sql: ${TABLE}.CAMPAIGN_PARAMETER_ID

  - dimension: campaign_id
    type: int
    # hidden: true
    sql: ${TABLE}.CAMPAIGN_ID

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: value_binary
    type: int
    sql: ${TABLE}.VALUE_BINARY

  - dimension: value_string
    sql: ${TABLE}.VALUE_STRING

  - measure: count
    type: count
    drill_fields: [campaign_parameter_id, name, campaign.campaign_id, campaign.name]

