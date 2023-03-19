feature 'User registration', js: true do
  scenario 'User can register to the system' do
    user_name = "test#{SecureRandom.uuid}"

    visit 'https://gitlab.testautomate.me/'

    find('[data-qa-selector="register_link"]').click
    find('#new_user_first_name').set 'test'
    find('#new_user_last_name').set 'user'
    find('#new_user_username').set user_name
    expect(page).to have_selector '.validation-success.field-validation'

    find('#new_user_email').set "#{user_name}@example.com"
    find('#new_user_password').set 'testuser123'
    find('.btn-confirm').click
    select('Software Developer', from: "Role")
    select('A different reason', from: "I'm signing up for GitLab because:")

    find("#jobs_to_be_done_other").set 'Whatever reason' if find('#jobs_to_be_done_other', visible: false).visible?

    find('[data-qa-selector="get_started_button"]').click

    expect(page).to have_content 'Welcome to GitLab'
  end
end