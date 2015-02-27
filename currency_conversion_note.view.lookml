- view: currency_conversion_note
  sql_table_name: CURRENCY_CONVERSION_NOTE
  fields:

  - dimension: amount_src
    type: number
    sql: ${TABLE}.AMOUNT_SRC

  - dimension: amount_target
    type: number
    sql: ${TABLE}.AMOUNT_TARGET

  - dimension: conversion_rate
    type: number
    sql: ${TABLE}.CONVERSION_RATE

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: currency_src_code
    sql: ${TABLE}.CURRENCY_SRC_CODE

  - dimension: currency_target_code
    sql: ${TABLE}.CURRENCY_TARGET_CODE

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: note_id
    type: int
    # hidden: true
    sql: ${TABLE}.NOTE_ID

  - measure: count
    type: count
    drill_fields: [note.note_id]

