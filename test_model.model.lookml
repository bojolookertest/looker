- connection: lookertest

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: account
  joins:
    - join: account_chart_type
      foreign_key: account_chart_type_id

    - join: company
      foreign_key: company_id


- explore: account_balance
  joins:
    - join: account
      foreign_key: account_id

    - join: account_chart_type
      foreign_key: account.account_chart_type_id

    - join: company
      foreign_key: account.company_id


- explore: account_chart_type

- explore: account_entry
  joins:
    - join: transaction
      foreign_key: transaction_id

    - join: account
      foreign_key: account_id

    - join: submission
      foreign_key: transaction.submission_id

    - join: job_posting
      foreign_key: transaction.job_posting_id

    - join: transaction_type
      foreign_key: transaction.transaction_type_id

    - join: discount_program
      foreign_key: transaction.discount_program_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: person
      foreign_key: job_posting_reviewer.person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: account_chart_type
      foreign_key: account.account_chart_type_id


- explore: account_type

- explore: activity_log

- explore: activity_log_reference
  joins:
    - join: activity_log
      foreign_key: activity_log_id


- explore: activity_log_reference_type

- explore: activity_log_type

- explore: address
  joins:
    - join: party
      foreign_key: party_id


- explore: address_type

- explore: announcement

- explore: announcement_user
  joins:
    - join: announcement
      foreign_key: announcement_id


- explore: answer_type

- explore: application_link

- explore: application_tip

- explore: application_tip_type

- explore: ats
  joins:
    - join: ats_company
      foreign_key: ats_company_id

    - join: company
      foreign_key: company_id

    - join: relationship
      foreign_key: relationship_id


- explore: ats_candidate
  joins:
    - join: candidate
      foreign_key: candidate_id


- explore: ats_company

- explore: ats_configuration
  joins:
    - join: ats_question
      foreign_key: ats_question_id

    - join: company
      foreign_key: company_id

    - join: ats_validation
      foreign_key: ats_question.ats_validation_id


- explore: ats_job_note
  joins:
    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: job_posting.company_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: referral_program
      foreign_key: job_posting.referral_program_id


- explore: ats_job_posting
  joins:
    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: job_posting.company_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: referral_program
      foreign_key: job_posting.referral_program_id


- explore: ats_job_posting_draft
  joins:
    - join: ats_job_posting
      foreign_key: ats_job_posting_id

    - join: job_posting
      foreign_key: ats_job_posting.job_posting_id

    - join: company
      foreign_key: job_posting.company_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: referral_program
      foreign_key: job_posting.referral_program_id


- explore: ats_question
  joins:
    - join: ats_validation
      foreign_key: ats_validation_id


- explore: ats_submission
  joins:
    - join: submission
      foreign_key: submission_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: job_posting
      foreign_key: submission.job_posting_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: person
      foreign_key: job_posting_reviewer.person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: ats_validation

- explore: audit_data

- explore: audit_entry

- explore: audit_type

- explore: award_question

- explore: award_status

- explore: benefits_type

- explore: billing_notes
  joins:
    - join: company
      foreign_key: company_id


- explore: bounty_connect_audit
  joins:
    - join: job_posting
      foreign_key: job_posting_id

    - join: message
      foreign_key: message_id

    - join: company
      foreign_key: job_posting.company_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: referral_program
      foreign_key: job_posting.referral_program_id


- explore: bounty_request
  joins:
    - join: external_accounting
      foreign_key: external_accounting_id

    - join: hire
      foreign_key: hire_id

    - join: transaction
      foreign_key: external_accounting.transaction_id

    - join: submission
      foreign_key: transaction.submission_id

    - join: job_posting
      foreign_key: transaction.job_posting_id

    - join: transaction_type
      foreign_key: transaction.transaction_type_id

    - join: discount_program
      foreign_key: transaction.discount_program_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: person
      foreign_key: job_posting_reviewer.person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: bw_tmp_content
  joins:
    - join: content
      foreign_key: content_id

    - join: mime_type
      foreign_key: mime_type_id


- explore: campaign
  joins:
    - join: campaign_template
      foreign_key: campaign_template_id


- explore: campaign_parameter
  joins:
    - join: campaign
      foreign_key: campaign_id

    - join: campaign_template
      foreign_key: campaign.campaign_template_id


- explore: campaign_template

- explore: campaign_template_template
  joins:
    - join: campaign_template
      foreign_key: campaign_template_id


- explore: candidate

- explore: candidate_match_profile
  joins:
    - join: candidate
      foreign_key: candidate_id


- explore: candidate_match_profile_industry
  joins:
    - join: candidate_match_profile
      foreign_key: candidate_match_profile_id

    - join: industry
      foreign_key: industry_id

    - join: candidate
      foreign_key: candidate_match_profile.candidate_id


- explore: candidate_match_profile_job_category
  joins:
    - join: candidate_match_profile
      foreign_key: candidate_match_profile_id

    - join: job_category
      foreign_key: job_category_id

    - join: candidate
      foreign_key: candidate_match_profile.candidate_id


- explore: candidate_match_profile_keyword
  joins:
    - join: candidate_match_profile
      foreign_key: candidate_match_profile_id

    - join: candidate
      foreign_key: candidate_match_profile.candidate_id


- explore: candidate_match_profile_region
  joins:
    - join: candidate_match_profile
      foreign_key: candidate_match_profile_id

    - join: region
      foreign_key: region_id

    - join: candidate
      foreign_key: candidate_match_profile.candidate_id


- explore: candidate_note
  joins:
    - join: note
      foreign_key: note_id

    - join: candidate
      foreign_key: candidate_id

    - join: submission
      foreign_key: submission_id

    - join: company
      foreign_key: note.company_id

    - join: review
      foreign_key: submission.review_id

    - join: job_posting
      foreign_key: submission.job_posting_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: person
      foreign_key: job_posting_reviewer.person_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: candidate_status

- explore: certification

- explore: clean_phone
  joins:
    - join: person
      foreign_key: person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: comp_owner_history
  joins:
    - join: comp_owner_type
      foreign_key: comp_owner_type_id


- explore: comp_owner_type

- explore: company

- explore: company_account_type

- explore: company_award_question
  joins:
    - join: award_question
      foreign_key: award_question_id

    - join: company
      foreign_key: company_id


- explore: company_diversity_status
  joins:
    - join: company
      foreign_key: company_id


- explore: company_first_post
  joins:
    - join: company
      foreign_key: company_id


- explore: company_identity

- explore: company_legal_status_type

- explore: company_metadata
  joins:
    - join: company
      foreign_key: company_id


- explore: company_permission

- explore: company_relation

- explore: company_size

- explore: company_transaction_cost
  joins:
    - join: contract
      foreign_key: contract_id

    - join: party
      foreign_key: party_id

    - join: transaction_cost
      foreign_key: transaction_cost_id

    - join: referral_program
      foreign_key: transaction_cost.referral_program_id

    - join: transaction_type
      foreign_key: transaction_cost.transaction_type_id


- explore: company_type

- explore: contact_address

- explore: content
  joins:
    - join: mime_type
      foreign_key: mime_type_id


- explore: content_placeholder
  joins:
    - join: content
      foreign_key: content_id

    - join: mime_type
      foreign_key: mime_type_id


- explore: contract

- explore: contract_backup
  joins:
    - join: contract
      foreign_key: contract_id


- explore: contract_type

- explore: conversion_rate

- explore: credit_card
  joins:
    - join: person
      foreign_key: person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: credit_card_type

- explore: currency

- explore: currency_conversion_note
  joins:
    - join: note
      foreign_key: note_id

    - join: company
      foreign_key: note.company_id


- explore: disabled_job_server

- explore: discount_contract

- explore: discount_multifill
  joins:
    - join: party
      foreign_key: party_id

    - join: discount_program
      foreign_key: discount_program_id


- explore: discount_program

- explore: diversity_status

- explore: education_level

- explore: email_suppression_list

- explore: email_suppression_type

- explore: email_type

- explore: email_type_attachment
  joins:
    - join: content
      foreign_key: content_id

    - join: mime_type
      foreign_key: content.mime_type_id


- explore: email_vendor

- explore: employer_note
  joins:
    - join: note
      foreign_key: note_id

    - join: company
      foreign_key: note.company_id


- explore: employment_type

- explore: engagement_status
  joins:
    - join: posting_action
      foreign_key: posting_action_id

    - join: person
      foreign_key: posting_action.person_id

    - join: job_posting
      foreign_key: posting_action.job_posting_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: engagement_status_status

- explore: external_accounting
  joins:
    - join: transaction
      foreign_key: transaction_id

    - join: submission
      foreign_key: transaction.submission_id

    - join: job_posting
      foreign_key: transaction.job_posting_id

    - join: transaction_type
      foreign_key: transaction.transaction_type_id

    - join: discount_program
      foreign_key: transaction.discount_program_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: person
      foreign_key: job_posting_reviewer.person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: file_system

- explore: firm_size

- explore: forwarded_resume
  joins:
    - join: message
      foreign_key: message_id

    - join: candidate
      foreign_key: candidate_id


- explore: gcp_qc_notification

- explore: gcp_qc_notification_type

- explore: gcp_qc_user
  joins:
    - join: phone_conference_schedule
      foreign_key: phone_conference_schedule_id


- explore: guarantee_period

- explore: help_page

- explore: help_text

- explore: hire
  joins:
    - join: submission
      foreign_key: submission_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: job_posting
      foreign_key: submission.job_posting_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: person
      foreign_key: job_posting_reviewer.person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: hire_message
  joins:
    - join: message
      foreign_key: message_id

    - join: submission
      foreign_key: submission_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: job_posting
      foreign_key: submission.job_posting_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: person
      foreign_key: job_posting_reviewer.person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: hire_message_billing_detail

- explore: hire_response
  joins:
    - join: message
      foreign_key: message_id

    - join: submission
      foreign_key: submission_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: job_posting
      foreign_key: submission.job_posting_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: person
      foreign_key: job_posting_reviewer.person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: hire_response_type

- explore: hiring_manager
  joins:
    - join: person
      foreign_key: person_id

    - join: company_size
      foreign_key: company_size_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: icims_api_call_log

- explore: icims_api_call_type

- explore: icims_handler

- explore: icims_handler_customer_relationship

- explore: icims_handler_type

- explore: icims_industry_map
  joins:
    - join: industry
      foreign_key: industry_id


- explore: icims_job_category_map
  joins:
    - join: job_category
      foreign_key: job_category_id


- explore: icims_notification_log

- explore: icims_notification_type

- explore: icims_submission_synchronization
  joins:
    - join: submission
      foreign_key: submission_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: job_posting
      foreign_key: submission.job_posting_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: person
      foreign_key: job_posting_reviewer.person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: icims_submission_synchronization_error

- explore: industry

- explore: industry_status

- explore: internal_user_authentication
  joins:
    - join: person
      foreign_key: person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: invite_filter_type

- explore: job_category

- explore: job_category_status

- explore: job_category_temp

- explore: job_posting
  joins:
    - join: original_job_posting
      from: job_posting
      foreign_key: original_job_posting_id

    - join: company
      foreign_key: company_id

    - join: years_experience_type
      foreign_key: years_experience_type_id

    - join: region
      foreign_key: region_id

    - join: industry
      foreign_key: industry_id

    - join: job_category
      foreign_key: job_category_id

    - join: referral_program
      foreign_key: referral_program_id


- explore: job_posting_closed_reason

- explore: job_posting_invitation
  joins:
    - join: message
      foreign_key: message_id

    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: job_posting.company_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: referral_program
      foreign_key: job_posting.referral_program_id


- explore: job_posting_promotion_history
  joins:
    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: job_posting.company_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: referral_program
      foreign_key: job_posting.referral_program_id


- explore: job_posting_question
  joins:
    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: job_posting.company_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: referral_program
      foreign_key: job_posting.referral_program_id


- explore: job_posting_recruiter_report_counts
  joins:
    - join: job_posting
      foreign_key: job_posting_id

    - join: recruiter
      foreign_key: recruiter_id

    - join: company
      foreign_key: job_posting.company_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: referral_program
      foreign_key: job_posting.referral_program_id

    - join: person
      foreign_key: recruiter.person_id

    - join: firm_size
      foreign_key: recruiter.firm_size_id


- explore: job_posting_relationship_report_count
  joins:
    - join: recruiter
      foreign_key: recruiter_id

    - join: person
      foreign_key: recruiter.person_id

    - join: firm_size
      foreign_key: recruiter.firm_size_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: job_posting_report_counts
  joins:
    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: job_posting.company_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: referral_program
      foreign_key: job_posting.referral_program_id


- explore: job_posting_request
  joins:
    - join: message
      foreign_key: message_id

    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: job_posting.company_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: referral_program
      foreign_key: job_posting.referral_program_id


- explore: job_posting_response
  joins:
    - join: message
      foreign_key: message_id

    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: job_posting.company_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: referral_program
      foreign_key: job_posting.referral_program_id


- explore: job_posting_reviewer
  joins:
    - join: person
      foreign_key: person_id

    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: job_run

- explore: job_status

- explore: login_attempt
  joins:
    - join: person
      foreign_key: person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: login_attempt_temp
  joins:
    - join: login_attempt
      foreign_key: login_attempt_id

    - join: person
      foreign_key: person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: login_type

- explore: marketing_info
  joins:
    - join: industry
      foreign_key: industry_id

    - join: job_category
      foreign_key: job_category_id

    - join: person
      foreign_key: person_id

    - join: company_size
      foreign_key: company_size_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: marketing_question

- explore: message
  joins:
    - join: parent_message
      from: message
      foreign_key: parent_message_id


- explore: message_context_reference
  joins:
    - join: message
      foreign_key: message_id


- explore: message_context_reference_type

- explore: message_email_recipient
  joins:
    - join: message
      foreign_key: message_id


- explore: message_mapping

- explore: message_status

- explore: message_text

- explore: metric
  joins:
    - join: metric_definition
      foreign_key: metric_definition_id

    - join: person
      foreign_key: person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: metric_definition

- explore: metric_percentile
  joins:
    - join: metric_definition
      foreign_key: metric_definition_id


- explore: mime_type

- explore: monthly_report
  joins:
    - join: stored_document
      foreign_key: stored_document_id

    - join: company
      foreign_key: company_id

    - join: content
      foreign_key: stored_document.content_id

    - join: mime_type
      foreign_key: content.mime_type_id


- explore: name_prefix

- explore: note
  joins:
    - join: company
      foreign_key: company_id


- explore: note_text

- explore: notification_redirect
  joins:
    - join: person
      foreign_key: person_id

    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: notification_type

- explore: ofccp_status

- explore: override_transaction_cost
  joins:
    - join: transaction_cost
      foreign_key: transaction_cost_id

    - join: referral_program
      foreign_key: referral_program_id

    - join: transaction_type
      foreign_key: transaction_cost.transaction_type_id


- explore: party

- explore: party_email_type_relationship
  joins:
    - join: party
      foreign_key: party_id


- explore: party_role
  joins:
    - join: party
      foreign_key: party_id


- explore: payment
  joins:
    - join: hire
      foreign_key: hire_id

    - join: submission
      foreign_key: hire.submission_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: job_posting
      foreign_key: submission.job_posting_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: person
      foreign_key: job_posting_reviewer.person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: payment_status

- explore: paypal_country_codes

- explore: paypal_error

- explore: paypal_error_log
  joins:
    - join: paypal_error
      foreign_key: paypal_error_id

    - join: paypal_tx_log
      foreign_key: paypal_tx_log_id

    - join: transaction
      foreign_key: paypal_tx_log.transaction_id

    - join: submission
      foreign_key: transaction.submission_id

    - join: job_posting
      foreign_key: transaction.job_posting_id

    - join: transaction_type
      foreign_key: transaction.transaction_type_id

    - join: discount_program
      foreign_key: transaction.discount_program_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: person
      foreign_key: job_posting_reviewer.person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: paypal_tx_log
  joins:
    - join: transaction
      foreign_key: transaction_id

    - join: submission
      foreign_key: transaction.submission_id

    - join: job_posting
      foreign_key: transaction.job_posting_id

    - join: transaction_type
      foreign_key: transaction.transaction_type_id

    - join: discount_program
      foreign_key: transaction.discount_program_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: person
      foreign_key: job_posting_reviewer.person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: pending_email

- explore: pending_email_attachment
  joins:
    - join: pending_email
      foreign_key: pending_email_id

    - join: content
      foreign_key: content_id

    - join: mime_type
      foreign_key: content.mime_type_id


- explore: pending_email_content
  joins:
    - join: pending_email
      foreign_key: pending_email_id

    - join: mime_type
      foreign_key: mime_type_id


- explore: pending_email_error
  joins:
    - join: pending_email
      foreign_key: pending_email_id


- explore: pending_email_recipient
  joins:
    - join: pending_email
      foreign_key: pending_email_id


- explore: person
  joins:
    - join: company
      foreign_key: company_id

    - join: referral_program
      foreign_key: referral_program_id


- explore: person_search_string
  joins:
    - join: person
      foreign_key: person_id

    - join: search_string
      foreign_key: search_string_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: person_status

- explore: person_status_history
  joins:
    - join: person
      foreign_key: person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: person_tree

- explore: phone_conference_event

- explore: phone_conference_job_schedule
  joins:
    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: job_posting.company_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: referral_program
      foreign_key: job_posting.referral_program_id


- explore: phone_conference_party
  joins:
    - join: party
      foreign_key: party_id

    - join: person
      foreign_key: person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: phone_conference_reminder
  joins:
    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: job_posting.company_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: referral_program
      foreign_key: job_posting.referral_program_id


- explore: phone_conference_schedule

- explore: phone_conference_schedule_status

- explore: postal_code

- explore: posting_action
  joins:
    - join: person
      foreign_key: person_id

    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: posting_action_status

- explore: posting_action_type

- explore: posting_activity

- explore: posting_comment
  joins:
    - join: person
      foreign_key: person_id

    - join: job_posting
      foreign_key: job_posting_id

    - join: posting_default_comment
      foreign_key: posting_default_comment_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: party
      foreign_key: posting_default_comment.party_id


- explore: posting_comment_recruiter
  joins:
    - join: person
      foreign_key: person_id

    - join: posting_comment
      foreign_key: posting_comment_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: job_posting
      foreign_key: posting_comment.job_posting_id

    - join: posting_default_comment
      foreign_key: posting_comment.posting_default_comment_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: party
      foreign_key: posting_default_comment.party_id


- explore: posting_credit_status

- explore: posting_default_comment
  joins:
    - join: party
      foreign_key: party_id


- explore: posting_meta_status

- explore: posting_repost_type

- explore: posting_status

- explore: posting_status_history
  joins:
    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: job_posting.company_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: referral_program
      foreign_key: job_posting.referral_program_id


- explore: posting_view
  joins:
    - join: person
      foreign_key: person_id

    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: posting_view_archive
  joins:
    - join: posting_view
      foreign_key: posting_view_id

    - join: person
      foreign_key: person_id

    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: posting_visibility_status

- explore: preview_invitation
  joins:
    - join: person
      foreign_key: person_id

    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: preview_invitation_archive
  joins:
    - join: person
      foreign_key: person_id

    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: qrtz_blob_triggers

- explore: qrtz_calendars

- explore: qrtz_cron_triggers

- explore: qrtz_fired_triggers

- explore: qrtz_job_details

- explore: qrtz_job_listeners

- explore: qrtz_locks

- explore: qrtz_paused_trigger_grps

- explore: qrtz_scheduler_state

- explore: qrtz_simple_triggers

- explore: qrtz_trigger_listeners

- explore: qrtz_triggers

- explore: question_type

- explore: recipient_type

- explore: record_status

- explore: recruiter
  joins:
    - join: person
      foreign_key: person_id

    - join: firm_size
      foreign_key: firm_size_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: recruiter_assessment

- explore: recruiter_assessment_type

- explore: recruiter_note
  joins:
    - join: note
      foreign_key: note_id

    - join: recruiter
      foreign_key: recruiter_id

    - join: company
      foreign_key: note.company_id

    - join: person
      foreign_key: recruiter.person_id

    - join: firm_size
      foreign_key: recruiter.firm_size_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: referral_donotcall

- explore: referral_program

- explore: referral_slot
  joins:
    - join: referral_program
      foreign_key: referral_program_id


- explore: referral_slot_type

- explore: referrer_lead
  joins:
    - join: person
      foreign_key: person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: referrer_marketing_status

- explore: referrer_marketing_status_history
  joins:
    - join: person
      foreign_key: person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: referrer_status

- explore: referrer_status_history
  joins:
    - join: person
      foreign_key: person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: referrer_status_history_type

- explore: region
  joins:
    - join: parent_region
      from: region
      foreign_key: parent_region_id


- explore: region_type

- explore: registration_attempt

- explore: relationship

- explore: relationship_type

- explore: relocation_assistance

- explore: report_preference
  joins:
    - join: job_category
      foreign_key: job_category_id


- explore: report_preference_company
  joins:
    - join: report_preference
      foreign_key: report_preference_id

    - join: company
      foreign_key: company_id

    - join: job_category
      foreign_key: report_preference.job_category_id


- explore: response_type

- explore: review
  joins:
    - join: submission_reviewer
      foreign_key: submission_reviewer_id

    - join: submission
      foreign_key: submission_reviewer.submission_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

#     - join: review
#       foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: job_posting
      foreign_key: submission.job_posting_id

    - join: company
      foreign_key: job_posting.company_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: referral_program
      foreign_key: job_posting.referral_program_id

    - join: person
      foreign_key: job_posting_reviewer.person_id


- explore: review_status_type

- explore: role_type

- explore: salary_range_type

- explore: saved_job_posting
  joins:
    - join: person
      foreign_key: person_id

    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: saved_search

- explore: search_parameter_value
  joins:
    - join: saved_search
      foreign_key: saved_search_id


- explore: search_parameter_value_type

- explore: search_string

- explore: security_question_type

- explore: sent_email

- explore: sent_email_attachment
  joins:
    - join: sent_email
      foreign_key: sent_email_id

    - join: content
      foreign_key: content_id

    - join: mime_type
      foreign_key: content.mime_type_id


- explore: sent_email_content
  joins:
    - join: sent_email
      foreign_key: sent_email_id

    - join: mime_type
      foreign_key: mime_type_id


- explore: ses_bounce_log

- explore: ses_bounce_log_recipient

- explore: ses_notification_type

- explore: site_down_warning

- explore: skill
  joins:
    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: job_posting.company_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: referral_program
      foreign_key: job_posting.referral_program_id


- explore: special_agreement_term
  joins:
    - join: company
      foreign_key: company_id


- explore: special_contract_term
  joins:
    - join: contract
      foreign_key: contract_id


- explore: stored_document
  joins:
    - join: content
      foreign_key: content_id

    - join: mime_type
      foreign_key: content.mime_type_id


- explore: stored_document_copies
  joins:
    - join: stored_document
      foreign_key: stored_document_id

    - join: content
      foreign_key: stored_document.content_id

    - join: mime_type
      foreign_key: content.mime_type_id


- explore: stored_file
  joins:
    - join: person
      foreign_key: person_id

    - join: candidate
      foreign_key: candidate_id

    - join: file_system
      foreign_key: file_system_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: submission
  joins:
    - join: review
      foreign_key: review_id

    - join: candidate
      foreign_key: candidate_id
      
    - join: recruiter
      foreign_key: candidate.recruiter_person_id
      
    - join: recruiter_person
      from: person
      foreign_key: recruiter.person_id
      
    - join: recruiter_company
      from: company
      foreign_key: recruiter_person.company_id

    - join: job_posting
      foreign_key: job_posting_id
      
    - join: hiring_manager
      foreign_key: job_posting.hiring_manager_person_id
      
    - join: hiring_manager_person
      from: person
      foreign_key: hiring_manager.person_id
      
    - join: hiring_manager_company
      from: company
      foreign_key: hiring_manager_person.company_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

#     - join: submission
#       foreign_key: submission_reviewer.submission_id

    - join: hire
      sql_on: ${submission.submission_id} = ${hire.submission_id}

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: reviewer
      from: person
      foreign_key: job_posting_reviewer.person_id

    - join: reviewer_company
      from: company
      foreign_key: reviewer.company_id

    - join: reviewer_referral_program
      from: referral_program
      foreign_key: reviewer.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: submission_answer
  joins:
    - join: job_posting_question
      foreign_key: job_posting_question_id

    - join: submission
      foreign_key: submission_id

    - join: ats_question
      foreign_key: ats_question_id

    - join: job_posting
      foreign_key: job_posting_question.job_posting_id

    - join: company
      foreign_key: job_posting.company_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: referral_program
      foreign_key: job_posting.referral_program_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: person
      foreign_key: job_posting_reviewer.person_id

    - join: ats_validation
      foreign_key: ats_question.ats_validation_id


- explore: submission_award_question_answer
  joins:
    - join: award_question
      foreign_key: award_question_id

    - join: submission
      foreign_key: submission_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: job_posting
      foreign_key: submission.job_posting_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: person
      foreign_key: job_posting_reviewer.person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: submission_reviewer
  joins:
    - join: submission
      foreign_key: submission_id

    - join: job_posting_reviewer
      foreign_key: job_posting_reviewer_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: job_posting
      foreign_key: submission.job_posting_id

#     - join: submission_reviewer
#       foreign_key: review.submission_reviewer_id

    - join: company
      foreign_key: job_posting.company_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: referral_program
      foreign_key: job_posting.referral_program_id

    - join: person
      foreign_key: job_posting_reviewer.person_id


- explore: submission_status

- explore: submission_status_history
  joins:
    - join: submission
      foreign_key: submission_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: job_posting
      foreign_key: submission.job_posting_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: person
      foreign_key: job_posting_reviewer.person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: submission_status_history_reason

- explore: submission_status_history_reasons

- explore: submission_type

- explore: submission_view
  joins:
    - join: submission
      foreign_key: submission_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: job_posting
      foreign_key: submission.job_posting_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: person
      foreign_key: job_posting_reviewer.person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: submitted_candidate_match_profile
  joins:
    - join: candidate
      foreign_key: candidate_id


- explore: submitted_candidate_match_profile_industry
  joins:
    - join: candidate_match_profile
      foreign_key: candidate_match_profile_id

    - join: industry
      foreign_key: industry_id

    - join: candidate
      foreign_key: candidate_match_profile.candidate_id


- explore: submitted_candidate_match_profile_job_category
  joins:
    - join: candidate_match_profile
      foreign_key: candidate_match_profile_id

    - join: job_category
      foreign_key: job_category_id

    - join: candidate
      foreign_key: candidate_match_profile.candidate_id


- explore: submitted_candidate_match_profile_keyword
  joins:
    - join: candidate_match_profile
      foreign_key: candidate_match_profile_id

    - join: candidate
      foreign_key: candidate_match_profile.candidate_id


- explore: submitted_candidate_match_profile_region
  joins:
    - join: candidate_match_profile
      foreign_key: candidate_match_profile_id

    - join: region
      foreign_key: region_id

    - join: candidate
      foreign_key: candidate_match_profile.candidate_id


- explore: submitted_candidate_match_profile_summary
  joins:
    - join: submission
      foreign_key: submission_id

    - join: candidate_match_profile
      foreign_key: candidate_match_profile_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: job_posting
      foreign_key: submission.job_posting_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: person
      foreign_key: job_posting_reviewer.person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: suggestion_definition

- explore: suppressed_email

- explore: system_setting

- explore: temp_person
  joins:
    - join: person
      foreign_key: person_id

    - join: company
      foreign_key: company_id

    - join: referral_program
      foreign_key: referral_program_id


- explore: temp_posting_status_history
  joins:
    - join: job_posting
      foreign_key: job_posting_id

    - join: company
      foreign_key: job_posting.company_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id

    - join: referral_program
      foreign_key: job_posting.referral_program_id


- explore: template

- explore: template_type

- explore: tmp_mbr_lookback
  joins:
    - join: company
      foreign_key: company_id


- explore: transaction
  joins:
    - join: submission
      foreign_key: submission_id

    - join: job_posting
      foreign_key: job_posting_id

    - join: transaction_type
      foreign_key: transaction_type_id

    - join: discount_program
      foreign_key: discount_program_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: person
      foreign_key: job_posting_reviewer.person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: transaction_cost
  joins:
    - join: referral_program
      foreign_key: referral_program_id

    - join: transaction_type
      foreign_key: transaction_type_id


- explore: transaction_reporting_party
  joins:
    - join: party
      foreign_key: party_id

    - join: transaction
      foreign_key: transaction_id

    - join: submission
      foreign_key: transaction.submission_id

    - join: job_posting
      foreign_key: transaction.job_posting_id

    - join: transaction_type
      foreign_key: transaction.transaction_type_id

    - join: discount_program
      foreign_key: transaction.discount_program_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: person
      foreign_key: job_posting_reviewer.person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: transaction_reporting_period

- explore: transaction_type

- explore: travel_requirements_type

- explore: tree_type

- explore: user_notification
  joins:
    - join: person
      foreign_key: person_id

    - join: submission
      foreign_key: submission_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: job_posting
      foreign_key: submission.job_posting_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: user_notification_type

- explore: user_preference
  joins:
    - join: person
      foreign_key: person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: user_preference_type

- explore: version

- explore: w9_form_data
  joins:
    - join: person
      foreign_key: person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: w9_link
  joins:
    - join: person
      foreign_key: person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id


- explore: w9_type

- explore: withdrawal_request
  joins:
    - join: address
      foreign_key: address_id

    - join: transaction
      foreign_key: transaction_id

    - join: party
      foreign_key: address.party_id

    - join: submission
      foreign_key: transaction.submission_id

    - join: job_posting
      foreign_key: transaction.job_posting_id

    - join: transaction_type
      foreign_key: transaction.transaction_type_id

    - join: discount_program
      foreign_key: transaction.discount_program_id

    - join: review
      foreign_key: submission.review_id

    - join: candidate
      foreign_key: submission.candidate_id

    - join: submission_reviewer
      foreign_key: review.submission_reviewer_id

    - join: job_posting_reviewer
      foreign_key: submission_reviewer.job_posting_reviewer_id

    - join: person
      foreign_key: job_posting_reviewer.person_id

    - join: company
      foreign_key: person.company_id

    - join: referral_program
      foreign_key: person.referral_program_id

    - join: years_experience_type
      foreign_key: job_posting.years_experience_type_id

    - join: region
      foreign_key: job_posting.region_id

    - join: industry
      foreign_key: job_posting.industry_id

    - join: job_category
      foreign_key: job_posting.job_category_id


- explore: withdrawal_request_status

- explore: years_experience_type

