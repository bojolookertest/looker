- view: referral_donotcall
  sql_table_name: REFERRAL_DONOTCALL
  fields:

  - dimension: company_name
    sql: ${TABLE}.COMPANY_NAME

  - dimension: donotcall_id
    type: int
    sql: ${TABLE}.DONOTCALL_ID

  - measure: count
    type: count
    drill_fields: [company_name]

