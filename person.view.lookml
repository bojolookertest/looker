- view: person
  sql_table_name: PERSON
  fields:

  - dimension: person_id
    primary_key: true
    type: int
    sql: ${TABLE}.PERSON_ID

  - dimension: accept_terms
    sql: ${TABLE}.ACCEPT_TERMS

  - dimension: bad_login_count
    type: int
    sql: ${TABLE}.BAD_LOGIN_COUNT

  - dimension: bj_report_admin_flag
    sql: ${TABLE}.BJ_REPORT_ADMIN_FLAG

  - dimension: bj_report_flag
    sql: ${TABLE}.BJ_REPORT_FLAG

  - dimension: bounty_jobs_certified_flag
    sql: ${TABLE}.BOUNTY_JOBS_CERTIFIED_FLAG

  - dimension: company_id
    type: int
    # hidden: true
    sql: ${TABLE}.COMPANY_ID

  - dimension: country_region_id
    type: int
    sql: ${TABLE}.COUNTRY_REGION_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: crw_disabled_flag
    sql: ${TABLE}.CRW_DISABLED_FLAG

  - dimension: email_address
    sql: ${TABLE}.EMAIL_ADDRESS

  - dimension: email_confirmed
    sql: ${TABLE}.EMAIL_CONFIRMED

  - dimension: fax
    sql: ${TABLE}.FAX

  - dimension: fax_extension
    sql: ${TABLE}.FAX_EXTENSION

  - dimension: first_login_flag
    sql: ${TABLE}.FIRST_LOGIN_FLAG

  - dimension: first_name
    sql: ${TABLE}.FIRST_NAME

  - dimension: forgot_password
    sql: ${TABLE}.FORGOT_PASSWORD

  - dimension: hiring_manager_referral_code
    sql: ${TABLE}.HIRING_MANAGER_REFERRAL_CODE

  - dimension_group: initial_activation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.INITIAL_ACTIVATION_DATE

  - dimension: internal_user_flag
    sql: ${TABLE}.INTERNAL_USER_FLAG

  - dimension_group: last_login
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAST_LOGIN

  - dimension: last_name
    sql: ${TABLE}.LAST_NAME

  - dimension: marketing_question_code
    sql: ${TABLE}.MARKETING_QUESTION_CODE

  - dimension: marketing_question_details
    sql: ${TABLE}.MARKETING_QUESTION_DETAILS

  - dimension: mobile_phone
    sql: ${TABLE}.MOBILE_PHONE

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: name_prefix_code
    sql: ${TABLE}.NAME_PREFIX_CODE

  - dimension: passphrase
    sql: ${TABLE}.PASSPHRASE

  - dimension: person_status_code
    sql: ${TABLE}.PERSON_STATUS_CODE

  - dimension: phone
    sql: ${TABLE}.PHONE

  - dimension: phone_extension
    sql: ${TABLE}.PHONE_EXTENSION

  - dimension: phone_private_flag
    sql: ${TABLE}.PHONE_PRIVATE_FLAG

  - dimension: profile_complete
    sql: ${TABLE}.PROFILE_COMPLETE

  - dimension: profile_picture_id
    type: int
    sql: ${TABLE}.PROFILE_PICTURE_ID

  - dimension: prospector_admin_flag
    sql: ${TABLE}.PROSPECTOR_ADMIN_FLAG

  - dimension: recruiter_referral_code
    sql: ${TABLE}.RECRUITER_REFERRAL_CODE

  - dimension: referral_program_id
    type: int
    # hidden: true
    sql: ${TABLE}.REFERRAL_PROGRAM_ID

  - dimension: referrer_marketing_status_code
    sql: ${TABLE}.REFERRER_MARKETING_STATUS_CODE

  - dimension: referrer_status_code
    sql: ${TABLE}.REFERRER_STATUS_CODE

  - dimension: secondary_phone_extension
    sql: ${TABLE}.SECONDARY_PHONE_EXTENSION

  - dimension: security_answer
    sql: ${TABLE}.SECURITY_ANSWER

  - dimension: security_answer_2
    sql: ${TABLE}.SECURITY_ANSWER_2

  - dimension: security_question_type_code
    sql: ${TABLE}.SECURITY_QUESTION_TYPE_CODE

  - dimension: security_question_type_code_2
    sql: ${TABLE}.SECURITY_QUESTION_TYPE_CODE_2

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - person_id
    - first_name
    - last_name
    - company.company_id
    - company.name
    - company.legal_company_name
    - referral_program.id
    - clean_phone.count
    - credit_card.count
    - hiring_manager.count
    - internal_user_authentication.count
    - job_posting_reviewer.count
    - login_attempt.count
    - login_attempt_temp.count
    - marketing_info.count
    - metric.count
    - notification_redirect.count
    - person_search_string.count
    - person_status_history.count
    - phone_conference_party.count
    - posting_action.count
    - posting_comment.count
    - posting_comment_recruiter.count
    - posting_view.count
    - posting_view_archive.count
    - preview_invitation.count
    - preview_invitation_archive.count
    - recruiter.count
    - referrer_lead.count
    - referrer_marketing_status_history.count
    - referrer_status_history.count
    - saved_job_posting.count
    - stored_file.count
    - temp_person.count
    - user_notification.count
    - user_preference.count
    - w9_form_data.count
    - w9_link.count

