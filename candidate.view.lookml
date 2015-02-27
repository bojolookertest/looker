- view: candidate
  sql_table_name: CANDIDATE
  fields:

  - dimension: candidate_id
    primary_key: true
    type: int
    sql: ${TABLE}.CANDIDATE_ID

  - dimension: candidate_status_code
    sql: ${TABLE}.CANDIDATE_STATUS_CODE

  - dimension: conversion_attempted
    sql: ${TABLE}.CONVERSION_ATTEMPTED

  - dimension: conversion_attempts
    type: int
    sql: ${TABLE}.CONVERSION_ATTEMPTS

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: email
    sql: ${TABLE}.EMAIL

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: recruiter_person_id
    type: int
    sql: ${TABLE}.RECRUITER_PERSON_ID

  - dimension: resume_converted
    sql: ${TABLE}.RESUME_CONVERTED

  - dimension: resume_stored_document_id
    type: int
    sql: ${TABLE}.RESUME_STORED_DOCUMENT_ID

  - dimension: title
    sql: ${TABLE}.TITLE

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - candidate_id
    - name
    - ats_candidate.count
    - candidate_match_profile.count
    - candidate_note.count
    - forwarded_resume.count
    - stored_file.count
    - submission.count
    - submitted_candidate_match_profile.count

