- view: transaction_reporting_party
  sql_table_name: TRANSACTION_REPORTING_PARTY
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: party_id
    type: int
    # hidden: true
    sql: ${TABLE}.PARTY_ID

  - dimension: transaction_id
    type: int
    # hidden: true
    sql: ${TABLE}.TRANSACTION_ID

  - measure: count
    type: count
    drill_fields: [id, party.party_id, party.name, transaction.id]

