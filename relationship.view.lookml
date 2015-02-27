- view: relationship
  sql_table_name: RELATIONSHIP
  fields:

  - dimension: relationship_id
    primary_key: true
    type: int
    sql: ${TABLE}.RELATIONSHIP_ID

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

  - dimension: record_status_code
    sql: ${TABLE}.RECORD_STATUS_CODE

  - dimension: relationship_type_code
    sql: ${TABLE}.RELATIONSHIP_TYPE_CODE

  - dimension: source_party_id
    type: int
    sql: ${TABLE}.SOURCE_PARTY_ID

  - dimension: target_party_id
    type: int
    sql: ${TABLE}.TARGET_PARTY_ID

  - measure: count
    type: count
    drill_fields: [relationship_id, ats.count]

