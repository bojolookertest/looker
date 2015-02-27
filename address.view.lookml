- view: address
  sql_table_name: ADDRESS
  fields:

  - dimension: address_id
    primary_key: true
    type: int
    sql: ${TABLE}.ADDRESS_ID

  - dimension: address_1
    sql: ${TABLE}.ADDRESS_1

  - dimension: address_2
    sql: ${TABLE}.ADDRESS_2

  - dimension: address_type_code
    sql: ${TABLE}.ADDRESS_TYPE_CODE

  - dimension: city
    sql: ${TABLE}.CITY

  - dimension: country
    sql: ${TABLE}.COUNTRY

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: party_id
    type: int
    # hidden: true
    sql: ${TABLE}.PARTY_ID

  - dimension: postal_code
    sql: ${TABLE}.POSTAL_CODE

  - dimension: state
    sql: ${TABLE}.STATE

  - measure: count
    type: count
    drill_fields: [address_id, party.party_id, party.name, withdrawal_request.count]

