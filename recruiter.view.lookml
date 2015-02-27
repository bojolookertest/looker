- view: recruiter
  sql_table_name: RECRUITER
  fields:

  - dimension: person_id
    primary_key: true
    type: int
    sql: ${TABLE}.PERSON_ID

  - dimension: approved_registration
    sql: ${TABLE}.APPROVED_REGISTRATION

  - dimension: certification_code_1
    sql: ${TABLE}.CERTIFICATION_CODE_1

  - dimension: certification_code_2
    sql: ${TABLE}.CERTIFICATION_CODE_2

  - dimension: certification_code_3
    sql: ${TABLE}.CERTIFICATION_CODE_3

  - dimension: companies_previously_placed
    sql: ${TABLE}.COMPANIES_PREVIOUSLY_PLACED

  - dimension: education_level_code
    sql: ${TABLE}.EDUCATION_LEVEL_CODE

  - dimension: firm_size_id
    type: int
    # hidden: true
    sql: ${TABLE}.FIRM_SIZE_ID

  - dimension: fliers_allowed_flag
    sql: ${TABLE}.FLIERS_ALLOWED_FLAG

  - dimension: industry_id_1
    type: int
    sql: ${TABLE}.INDUSTRY_ID_1

  - dimension: industry_id_2
    type: int
    sql: ${TABLE}.INDUSTRY_ID_2

  - dimension: industry_id_3
    type: int
    sql: ${TABLE}.INDUSTRY_ID_3

  - dimension: job_category_id_1
    type: int
    sql: ${TABLE}.JOB_CATEGORY_ID_1

  - dimension: job_category_id_2
    type: int
    sql: ${TABLE}.JOB_CATEGORY_ID_2

  - dimension: job_category_id_3
    type: int
    sql: ${TABLE}.JOB_CATEGORY_ID_3

  - dimension: legal_first_name
    sql: ${TABLE}.LEGAL_FIRST_NAME

  - dimension: legal_last_name
    sql: ${TABLE}.LEGAL_LAST_NAME

  - dimension: max_engagement_slots
    type: yesno
    sql: ${TABLE}.MAX_ENGAGEMENT_SLOTS

  - dimension: means_of_sourcing
    sql: ${TABLE}.MEANS_OF_SOURCING

  - dimension: memberships
    sql: ${TABLE}.MEMBERSHIPS

  - dimension: online_resources_for_sourcing
    sql: ${TABLE}.ONLINE_RESOURCES_FOR_SOURCING

  - dimension: past_specialty_interstitial
    sql: ${TABLE}.PAST_SPECIALTY_INTERSTITIAL

  - dimension: personal_description
    sql: ${TABLE}.PERSONAL_DESCRIPTION

  - dimension: role_within_org
    sql: ${TABLE}.ROLE_WITHIN_ORG

  - dimension: schools_attended
    sql: ${TABLE}.SCHOOLS_ATTENDED

  - dimension: years_recruiting
    sql: ${TABLE}.YEARS_RECRUITING

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - legal_first_name
    - legal_last_name
    - person.person_id
    - person.first_name
    - person.last_name
    - firm_size.id
    - job_posting_recruiter_report_counts.count
    - job_posting_relationship_report_count.count
    - recruiter_note.count

