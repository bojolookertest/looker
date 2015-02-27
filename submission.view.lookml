- view: submission
  sql_table_name: SUBMISSION
  fields:

  - dimension: submission_id
    primary_key: true
    type: int
    sql: ${TABLE}.SUBMISSION_ID

  - dimension: candidate_id
    type: int
    # hidden: true
    sql: ${TABLE}.CANDIDATE_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: job_posting_id
    type: int
    # hidden: true
    sql: ${TABLE}.JOB_POSTING_ID

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: review_id
    type: int
    # hidden: true
    sql: ${TABLE}.REVIEW_ID

  - dimension: status_code
    sql: ${TABLE}.STATUS_CODE

  - dimension: submission_note
    sql: ${TABLE}.SUBMISSION_NOTE

  - dimension: submission_type_code
    sql: ${TABLE}.SUBMISSION_TYPE_CODE

  - dimension: term_id
    type: int
    sql: ${TABLE}.TERM_ID
    
  - dimension: interviewed
    type: yesno
    sql: |
      (${TABLE}.STATUS_CODE IN ('I', 'N', 'O', 'E', 'H') 
      OR EXISTS (SELECT 1 
                   FROM SUBMISSION_STATUS_HISTORY SSH 
                  WHERE SSH.SUBMISSION_ID = ${submission_id} 
                    AND SSH.SUBMISSION_STATUS_CODE IN ('I', 'N', 'O', 'E', 'H')))

  - measure: count
    type: count
    drill_fields: detail*

  - measure: interviewed_count
    type: count_distinct
    sql: ${submission_id}
    drill_fields: detail*
    filters:
      interviewed: Yes


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - submission_id
    - review.review_id
    - candidate.candidate_id
    - candidate.name
    - job_posting.original_job_posting_id
    - ats_submission.count
    - candidate_note.count
    - hire.count
    - hire_message.count
    - hire_response.count
    - icims_submission_synchronization.count
    - submission_answer.count
    - submission_award_question_answer.count
    - submission_reviewer.count
    - submission_status_history.count
    - submission_view.count
    - submitted_candidate_match_profile_summary.count
    - transaction.count
    - user_notification.count

