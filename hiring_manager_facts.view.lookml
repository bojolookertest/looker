- view: hiring_manager_facts

# # Specify the table name if it's different from the view name:
#   sql_table_name: my_schema_name.hiring_manager_facts
#
# Or, you could make this view a derived table, like this:
  derived_table:
    sql: |
      select JP.HIRING_MANAGER_PERSON_ID
      , min(JP.CREATION_DATE) as FIRST_POSTING
      FROM JOB_POSTING JP
      GROUP BY JP.HIRING_MANAGER_PERSON_ID
 
#   persist_for: 1 hour
    sql_trigger_value: select current_date()
    indexes: [HIRING_MANAGER_PERSON_ID]

  fields:

  - dimension: hiring_manager_person_id
    primary_key: true
    type: int
    sql: ${TABLE}.HIRING_MANAGER_PERSON_ID

  - dimension_group: first_posting
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.first_posting

  - dimension: age_in_days
    type: int
    sql: datediff(now(),${first_posting_date})
    
  - dimension: age_in_days_tier
    type: tier
    tiers: [0,15,30,45,60]
    sql: ${age_in_days}
    style: integer

