- view: conversion_rate
  sql_table_name: CONVERSION_RATE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: effective
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EFFECTIVE_DATE

  - dimension: source_currency_code
    sql: ${TABLE}.SOURCE_CURRENCY_CODE

  - dimension: target_currency_code
    sql: ${TABLE}.TARGET_CURRENCY_CODE

  - dimension: value
    type: number
    sql: ${TABLE}.VALUE

  - measure: count
    type: count
    drill_fields: [id]

