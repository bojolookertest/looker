- view: stored_document_copies
  sql_table_name: STORED_DOCUMENT_COPIES
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: format
    sql: ${TABLE}.FORMAT

  - dimension: stored_document_id
    type: int
    # hidden: true
    sql: ${TABLE}.STORED_DOCUMENT_ID

  - dimension: stored_document_original_id
    type: int
    sql: ${TABLE}.STORED_DOCUMENT_ORIGINAL_ID

  - measure: count
    type: count
    drill_fields: [id, stored_document.id, stored_document.user_supplied_filename]

