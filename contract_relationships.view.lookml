- view: contract_relationships

  derived_table:
    sql: |
      select CT.CONTRACT_ID AS CONTRACT
      , P1.PERSON_ID AS EMP
      , P2.PERSON_ID AS HH
      , CT.START_DATE AS START
      , CT.END_DATE AS END
      from CONTRACT CT
      INNER JOIN PERSON P1
      ON (P1.PERSON_ID = CT.SOURCE_PARTY_ID) OR (P1.COMPANY_ID = CT.SOURCE_PARTY_ID)
      INNER JOIN PERSON P2
      ON (P2.PERSON_ID = CT.TARGET_PARTY_ID) OR (P2.COMPANY_ID = CT.TARGET_PARTY_ID)
 
#   persist_for: 1 hour
  sql_trigger_value: select current_date()
  indexes: [EMP, HH]

  fields:

  - dimension: contract
    primary_key: true
    type: int
    sql: ${TABLE}.contract

  - dimension: emp
    type: int
    sql: ${TABLE}.emp

  - dimension: hh
    type: int
    sql: ${TABLE}.hh
    
  - dimension_group: start
    type: time
    timeframes: [date]
    sql: ${TABLE}.START
    
  - dimension_group: end
    type: time
    timeframes: [date]
    sql: ${TABLE}.END
    

