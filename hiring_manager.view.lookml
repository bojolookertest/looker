- view: hiring_manager
  sql_table_name: HIRING_MANAGER
  fields:

  - dimension: person_id
    primary_key: true
    type: int
    sql: ${TABLE}.PERSON_ID

  - dimension: billing_contact_email
    sql: ${TABLE}.BILLING_CONTACT_EMAIL

  - dimension: billing_contact_name
    sql: ${TABLE}.BILLING_CONTACT_NAME

  - dimension: billing_contact_phone
    sql: ${TABLE}.BILLING_CONTACT_PHONE

  - dimension: billing_contact_phone_extension
    sql: ${TABLE}.BILLING_CONTACT_PHONE_EXTENSION

  - dimension: business_unit
    sql: ${TABLE}.BUSINESS_UNIT

  - dimension: company_identity_code
    sql: ${TABLE}.COMPANY_IDENTITY_CODE

  - dimension: company_size_id
    type: int
    # hidden: true
    sql: ${TABLE}.COMPANY_SIZE_ID

  - dimension: earns_priority_postings_flag
    sql: ${TABLE}.EARNS_PRIORITY_POSTINGS_FLAG

  - dimension: fills_earned_for_priority_posting
    type: int
    sql: ${TABLE}.FILLS_EARNED_FOR_PRIORITY_POSTING

  - dimension: industry_id_1
    type: int
    sql: ${TABLE}.INDUSTRY_ID_1

  - dimension: industry_id_2
    type: int
    sql: ${TABLE}.INDUSTRY_ID_2

  - dimension: industry_id_3
    type: int
    sql: ${TABLE}.INDUSTRY_ID_3

  - dimension: job_title
    sql: ${TABLE}.JOB_TITLE

  - dimension: notifications_disabled_flag
    sql: ${TABLE}.NOTIFICATIONS_DISABLED_FLAG

  - dimension: priority_postings_available
    type: int
    sql: ${TABLE}.PRIORITY_POSTINGS_AVAILABLE

  - dimension: public_display_description
    sql: ${TABLE}.PUBLIC_DISPLAY_DESCRIPTION

  - measure: count
    type: count
    drill_fields: [billing_contact_name, person.person_id, person.first_name, person.last_name, company_size.id]

