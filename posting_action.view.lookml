- view: posting_action
  sql_table_name: POSTING_ACTION
  fields:

  - dimension: posting_action_id
    primary_key: true
    type: int
    sql: ${TABLE}.POSTING_ACTION_ID

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

  - dimension: person_id
    type: int
    # hidden: true
    sql: ${TABLE}.PERSON_ID

  - dimension: posting_action_status_code
    sql: ${TABLE}.POSTING_ACTION_STATUS_CODE

  - dimension: posting_action_type_code
    sql: ${TABLE}.POSTING_ACTION_TYPE_CODE
    
  - dimension: is_contract2
    type: yesno
    sql: 

  - dimension: is_contract
    type: yesno
    sql: |
      EXISTS (SELECT CT.CONTRACT_ID
      FROM JOB_POSTING JP
      , PERSON EMP
      , PERSON HH
      , CONTRACT CT
      WHERE JP.JOB_POSTING_ID = ${TABLE}.JOB_POSTING_ID
      AND EMP.PERSON_ID = JP.HIRING_MANAGER_PERSON_ID
      AND HH.PERSON_ID = ${TABLE}.PERSON_ID
      AND (CT.SOURCE_PARTY_ID = EMP.PERSON_ID OR CT.SOURCE_PARTY_ID = EMP.COMPANY_ID)
      AND (CT.TARGET_PARTY_ID = HH.PERSON_ID OR CT.TARGET_PARTY_ID = HH.COMPANY_ID)
      AND NOW() >= CT.START_DATE
      AND NOW() < CT.END_DATE)
  
  - measure: count
    type: count
    drill_fields: detail*
    
  - measure: active_engagements_all
    type: count
    filters:
      posting_action_status_code: A
      
  - measure: active_engagements_marketplace
    type: count
    filters:
      posting_action_status_code: A
      is_contract: yes
  


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - posting_action_id
    - person.person_id
    - person.first_name
    - person.last_name
    - job_posting.original_job_posting_id
    - engagement_status.count

