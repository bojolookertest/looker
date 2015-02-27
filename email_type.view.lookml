- view: email_type
  sql_table_name: EMAIL_TYPE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: from_field
    sql: ${TABLE}.FROM_FIELD

  - dimension: group_name
    sql: ${TABLE}.GROUP_NAME

  - dimension: has_attachments
    type: yesno
    sql: ${TABLE}.HAS_ATTACHMENTS

  - dimension: subject
    sql: ${TABLE}.SUBJECT

  - dimension: type_name
    sql: ${TABLE}.TYPE_NAME

  - measure: count
    type: count
    drill_fields: [id, type_name, group_name]

