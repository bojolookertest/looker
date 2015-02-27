- view: message_mapping
  sql_table_name: MESSAGE_MAPPING
  fields:

  - dimension: message_mapping_id
    primary_key: true
    type: int
    sql: ${TABLE}.MESSAGE_MAPPING_ID

  - dimension: message_mapping_active
    sql: ${TABLE}.MESSAGE_MAPPING_ACTIVE

  - dimension: message_mapping_address
    sql: ${TABLE}.MESSAGE_MAPPING_ADDRESS

  - dimension: message_mapping_base_number
    type: int
    sql: ${TABLE}.MESSAGE_MAPPING_BASE_NUMBER

  - dimension_group: message_mapping_created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MESSAGE_MAPPING_CREATED

  - dimension: message_mapping_message_id
    type: int
    sql: ${TABLE}.MESSAGE_MAPPING_MESSAGE_ID

  - dimension: message_mapping_person_id
    type: int
    sql: ${TABLE}.MESSAGE_MAPPING_PERSON_ID

  - dimension: message_mapping_type
    sql: ${TABLE}.MESSAGE_MAPPING_TYPE

  - dimension_group: message_mapping_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MESSAGE_MAPPING_UPDATED

  - measure: count
    type: count
    drill_fields: [message_mapping_id]

