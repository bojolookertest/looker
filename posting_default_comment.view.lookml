- view: posting_default_comment
  sql_table_name: POSTING_DEFAULT_COMMENT
  fields:

  - dimension: posting_default_comment_id
    primary_key: true
    type: int
    sql: ${TABLE}.POSTING_DEFAULT_COMMENT_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: engaged_only_flag
    sql: ${TABLE}.ENGAGED_ONLY_FLAG

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

  - dimension: text
    sql: ${TABLE}.TEXT

  - measure: count
    type: count
    drill_fields: [posting_default_comment_id, party.party_id, party.name, posting_comment.count]

