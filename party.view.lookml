- view: party
  sql_table_name: PARTY
  fields:

  - dimension: party_id
    primary_key: true
    type: int
    sql: ${TABLE}.PARTY_ID

  - dimension: currency_code
    sql: ${TABLE}.CURRENCY_CODE

  - dimension: name
    sql: ${TABLE}.NAME

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - party_id
    - name
    - address.count
    - company_transaction_cost.count
    - discount_multifill.count
    - party_email_type_relationship.count
    - party_role.count
    - phone_conference_party.count
    - posting_default_comment.count
    - transaction_reporting_party.count

