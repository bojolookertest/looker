- view: job_posting
  sql_table_name: JOB_POSTING
  fields:

  - dimension: job_posting_id
    primary_key: true
    type: int
    sql: ${TABLE}.JOB_POSTING_ID

  - dimension: original_job_posting_id
    type: int
    # hidden: true
    sql: ${TABLE}.ORIGINAL_JOB_POSTING_ID

  - dimension: act_mgr_id
    type: int
    sql: ${TABLE}.ACT_MGR_ID

  - dimension: benefits_type_code
    sql: ${TABLE}.BENEFITS_TYPE_CODE

  - dimension: bonus_flag
    sql: ${TABLE}.BONUS_FLAG

  - dimension: bonus_maximum_range
    type: number
    sql: ${TABLE}.BONUS_MAXIMUM_RANGE

  - dimension: bonus_minimum_range
    type: number
    sql: ${TABLE}.BONUS_MINIMUM_RANGE

  - dimension: bounty
    type: number
    sql: ${TABLE}.BOUNTY

  - dimension: candidate_previous_companies
    sql: ${TABLE}.CANDIDATE_PREVIOUS_COMPANIES

  - dimension: commission_flag
    sql: ${TABLE}.COMMISSION_FLAG

  - dimension: commission_only_flag
    sql: ${TABLE}.COMMISSION_ONLY_FLAG

  - dimension_group: comp_effective
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.COMP_EFFECTIVE_DATE

  - dimension: comp_owner_id
    type: int
    sql: ${TABLE}.COMP_OWNER_ID

  - dimension: company_great_to_work_for
    sql: ${TABLE}.COMPANY_GREAT_TO_WORK_FOR

  - dimension: company_id
    type: int
    # hidden: true
    sql: ${TABLE}.COMPANY_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: currency_code
    sql: ${TABLE}.CURRENCY_CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: education_level_code
    sql: ${TABLE}.EDUCATION_LEVEL_CODE

  - dimension: employment_type_code
    sql: ${TABLE}.EMPLOYMENT_TYPE_CODE

  - dimension: flat_fee_flag
    sql: ${TABLE}.FLAT_FEE_FLAG

  - dimension: hiring_manager_person_id
    type: int
    sql: ${TABLE}.HIRING_MANAGER_PERSON_ID

  - dimension: hours_per_week
    sql: ${TABLE}.HOURS_PER_WEEK

  - dimension: ideal_candidate
    sql: ${TABLE}.IDEAL_CANDIDATE

  - dimension: industry_id
    type: int
    # hidden: true
    sql: ${TABLE}.INDUSTRY_ID

  - dimension: interview_reimbursed_flag
    sql: ${TABLE}.INTERVIEW_REIMBURSED_FLAG

  - dimension: is_priority_posting_flag
    sql: ${TABLE}.IS_PRIORITY_POSTING_FLAG

  - dimension: job_category_id
    type: int
    # hidden: true
    sql: ${TABLE}.JOB_CATEGORY_ID

  - dimension: job_posting_closed_reason_code
    sql: ${TABLE}.JOB_POSTING_CLOSED_REASON_CODE

  - dimension: location
    sql: ${TABLE}.LOCATION

  - dimension: management_experience_flag
    sql: ${TABLE}.MANAGEMENT_EXPERIENCE_FLAG

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: notifications_processed_flag
    sql: ${TABLE}.NOTIFICATIONS_PROCESSED_FLAG

  - dimension: ofccp_flag
    sql: ${TABLE}.OFCCP_FLAG

  - dimension: overtime_flag
    sql: ${TABLE}.OVERTIME_FLAG

  - dimension: posting_number
    sql: ${TABLE}.POSTING_NUMBER

  - dimension: posting_status_code
    sql: ${TABLE}.POSTING_STATUS_CODE

  - dimension: posting_visibility_status_code
    sql: ${TABLE}.POSTING_VISIBILITY_STATUS_CODE

  - dimension: preview_invitations_processed_flag
    sql: ${TABLE}.PREVIEW_INVITATIONS_PROCESSED_FLAG

  - dimension_group: preview_status_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.PREVIEW_STATUS_START_DATE

  - dimension: process_promotion_flag
    sql: ${TABLE}.PROCESS_PROMOTION_FLAG

  - dimension_group: program_effective
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.PROGRAM_EFFECTIVE_DATE

  - dimension: referral_program_id
    type: int
    # hidden: true
    sql: ${TABLE}.REFERRAL_PROGRAM_ID

  - dimension: region_id
    type: int
    # hidden: true
    sql: ${TABLE}.REGION_ID

  - dimension: relocation_assistance_code
    sql: ${TABLE}.RELOCATION_ASSISTANCE_CODE

  - dimension: repost_salary_flag
    sql: ${TABLE}.REPOST_SALARY_FLAG

  - dimension: req_num
    sql: ${TABLE}.REQ_NUM

  - dimension: salary_maximum_range
    type: number
    sql: ${TABLE}.SALARY_MAXIMUM_RANGE

  - dimension: salary_minimum_range
    type: number
    sql: ${TABLE}.SALARY_MINIMUM_RANGE

  - dimension: salary_percentage_awarded
    type: number
    sql: ${TABLE}.SALARY_PERCENTAGE_AWARDED

  - dimension: security_clearance_required_flag
    sql: ${TABLE}.SECURITY_CLEARANCE_REQUIRED_FLAG

  - dimension: standing_posting_count
    type: int
    sql: ${TABLE}.STANDING_POSTING_COUNT

  - dimension: standing_posting_flag
    sql: ${TABLE}.STANDING_POSTING_FLAG

  - dimension: subject_to_preview
    sql: ${TABLE}.SUBJECT_TO_PREVIEW

  - dimension: title
    sql: ${TABLE}.TITLE

  - dimension: travel_requirements_type_code
    sql: ${TABLE}.TRAVEL_REQUIREMENTS_TYPE_CODE

  - dimension: visa_candidates_considered_flag
    sql: ${TABLE}.VISA_CANDIDATES_CONSIDERED_FLAG

  - dimension: years_experience_type_id
    type: int
    # hidden: true
    sql: ${TABLE}.YEARS_EXPERIENCE_TYPE_ID
    
  - dimension: intake
    type: yesno
    sql: |
      (${TABLE}.JOB_POSTING_ID IN (
      SELECT JOB_POSTING_ID FROM PHONE_CONFERENCE_JOB_SCHEDULE)
      )

  - measure: PFP
    sql: min(${TABLE}.creation_date)
    
    

  - measure: count
    type: count
    drill_fields: [title,bounty,intake]


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - original_job_posting_id
    - job_posting.original_job_posting_id
    - company.company_id
    - company.name
    - company.legal_company_name
    - years_experience_type.id
    - region.name
    - region.parent_region_id
    - industry.name
    - industry.parent_industry_id
    - job_category.id
    - job_category.name
    - referral_program.id
    - ats_job_note.count
    - ats_job_posting.count
    - bounty_connect_audit.count
    - job_posting.count
    - job_posting_invitation.count
    - job_posting_promotion_history.count
    - job_posting_question.count
    - job_posting_recruiter_report_counts.count
    - job_posting_report_counts.count
    - job_posting_request.count
    - job_posting_response.count
    - job_posting_reviewer.count
    - notification_redirect.count
    - phone_conference_job_schedule.count
    - phone_conference_reminder.count
    - posting_action.count
    - posting_comment.count
    - posting_status_history.count
    - posting_view.count
    - posting_view_archive.count
    - preview_invitation.count
    - preview_invitation_archive.count
    - saved_job_posting.count
    - skill.count
    - submission.count
    - temp_posting_status_history.count
    - transaction.count

