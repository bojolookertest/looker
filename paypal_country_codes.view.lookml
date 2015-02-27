- view: paypal_country_codes
  sql_table_name: PAYPAL_COUNTRY_CODES
  fields:

  - dimension: country_name
    sql: ${TABLE}.COUNTRY_NAME

  - dimension: country_region_id
    type: int
    sql: ${TABLE}.COUNTRY_REGION_ID

  - dimension: paypal_country_type_code
    sql: ${TABLE}.PAYPAL_COUNTRY_TYPE_CODE

  - measure: count
    type: count
    drill_fields: [country_name]

