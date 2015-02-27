- view: phone_conference_party
  sql_table_name: PHONE_CONFERENCE_PARTY
  fields:

  - dimension: access_code
    sql: ${TABLE}.ACCESS_CODE

  - dimension: offline
    type: yesno
    sql: ${TABLE}.OFFLINE

  - dimension: offline_email
    sql: ${TABLE}.OFFLINE_EMAIL

  - dimension: organizer
    type: yesno
    sql: ${TABLE}.ORGANIZER

  - dimension: party_id
    type: int
    # hidden: true
    sql: ${TABLE}.PARTY_ID

  - dimension: person_id
    type: int
    # hidden: true
    sql: ${TABLE}.PERSON_ID

  - dimension: phone_number
    sql: ${TABLE}.PHONE_NUMBER

  - dimension: rsvp_accepted
    type: yesno
    sql: ${TABLE}.RSVP_ACCEPTED

  - dimension_group: rsvp_datetime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.RSVP_DATETIME

  - dimension: rsvp_notes
    sql: ${TABLE}.RSVP_NOTES

  - dimension: rsvp_sent
    type: yesno
    sql: ${TABLE}.RSVP_SENT

  - dimension_group: rsvp_sent_datetime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.RSVP_SENT_DATETIME

  - dimension: schedule_id
    type: int
    sql: ${TABLE}.SCHEDULE_ID

  - dimension: vendor_notes
    sql: ${TABLE}.VENDOR_NOTES

  - measure: count
    type: count
    drill_fields: [party.party_id, party.name, person.person_id, person.first_name, person.last_name]

