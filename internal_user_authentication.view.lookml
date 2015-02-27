- view: internal_user_authentication
  sql_table_name: INTERNAL_USER_AUTHENTICATION
  fields:

  - dimension: internal_user_authentication_id
    primary_key: true
    type: int
    sql: ${TABLE}.INTERNAL_USER_AUTHENTICATION_ID

  - dimension_group: cookie_set
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.COOKIE_SET_DATE

  - dimension: cookie_value
    sql: ${TABLE}.COOKIE_VALUE

  - dimension: ip_address
    sql: ${TABLE}.IP_ADDRESS

  - dimension: person_id
    type: int
    # hidden: true
    sql: ${TABLE}.PERSON_ID

  - measure: count
    type: count
    drill_fields: [internal_user_authentication_id, person.person_id, person.first_name, person.last_name]

