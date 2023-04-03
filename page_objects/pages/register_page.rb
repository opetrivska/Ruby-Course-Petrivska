# frozen_string_literal: true

class RegisterPage < SitePrism::Page
  set_url 'https://gitlab.testautomate.me/'

  element :sign_in_button, '[data-qa-selector="register_link"]'
  element :new_first_name_field, '#new_user_first_name'
  element :new_last_name_field, '#new_user_last_name'
  element :new_user_name_field, '#new_user_username'
  element :new_user_email_field, '#new_user_email'
  element :new_user_password_field, '#new_user_password'
  element :confirm_button, '.btn-confirm'
  element :role_field, '#user_role'
  element :registration_objective_field, '#user_registration_objective'
  element :different_reason_field, '#jobs_to_be_done_other'
  element :get_started_button, '[data-qa-selector="get_started_button"]'
end
