class RegisterPage < SitePrism::Page
  set_url 'https://gitlab.testautomate.me/'

  element :signin_button, '[data-qa-selector="register_link"]'
  element :newfirstname_field, '#new_user_first_name'
  element :newlastname_field, '#new_user_last_name'
  element :newusername_field, '#new_user_username'
  element :newuseremail_field, '#new_user_email'
  element :newuserpassword_field, '#new_user_password'
  element :confirm_button, '.btn-confirm'
  element :getstarted_button, '[data-qa-selector="get_started_button"]'
end