# frozen_string_literal: true

# This module describes repeatable action
module Helpers
  def login_user(login, password)
    @login_page = LoginPage.new
    @login_page.load

    @login_page.login_field.set login
    @login_page.password_field.set password
    @login_page.submit_button.click
  end

  def register_user(user)
    visit 'https://gitlab.testautomate.me/'

    find('[data-qa-selector="register_link"]').click
    find('#new_user_first_name').set user.firstname
    find('#new_user_last_name').set user.lastname
    find('#new_user_username').set user.username
    expect(page).to have_selector '.validation-success.field-validation'

    find('#new_user_email').set user.email
    find('#new_user_password').set user.password
    find('.btn-confirm').click
    select('Software Developer', from: 'Role')
    select('A different reason', from: "I'm signing up for GitLab because:")

    find('#jobs_to_be_done_other').set 'Whatever reason' if find('#jobs_to_be_done_other', visible: false).visible?

    find('[data-qa-selector="get_started_button"]').click
  end
end
