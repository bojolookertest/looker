- view: credit_card
  sql_table_name: CREDIT_CARD
  fields:

  - dimension: credit_card_id
    primary_key: true
    type: int
    sql: ${TABLE}.CREDIT_CARD_ID

  - dimension: card_number
    sql: ${TABLE}.CARD_NUMBER

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: credit_card_type_code
    sql: ${TABLE}.CREDIT_CARD_TYPE_CODE

  - dimension: cvv2
    sql: ${TABLE}.CVV2

  - dimension: exp_day
    type: int
    sql: ${TABLE}.EXP_DAY

  - dimension: exp_month
    type: int
    sql: ${TABLE}.EXP_MONTH

  - dimension: exp_year
    type: int
    sql: ${TABLE}.EXP_YEAR

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

  - measure: count
    type: count
    drill_fields: [credit_card_id, person.person_id, person.first_name, person.last_name]

