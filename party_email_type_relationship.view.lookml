- view: party_email_type_relationship
  sql_table_name: PARTY_EMAIL_TYPE_RELATIONSHIP
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: enabled
    type: yesno
    sql: ${TABLE}.ENABLED

  - dimension: html
    type: yesno
    sql: ${TABLE}.HTML

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

  - dimension: type_id
    type: int
    sql: ${TABLE}.TYPE_ID

  - measure: count
    type: count
    drill_fields: [id, party.party_id, party.name]

