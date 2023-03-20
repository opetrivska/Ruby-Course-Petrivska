feature 'User registration', js: true do
  scenario 'User can register to the system' do
    @register_page = RegisterPage.new
    @register_page.load

    user_name = "test#{SecureRandom.uuid}"

    @register_page.signin_button.click
    @register_page.newfirstname_field.set 'test'
    @register_page.newlastname_field.set 'user'
    @register_page.newusername_field.set user_name

    expect(page).to have_selector '.validation-success.field-validation'

    @register_page.newuseremail_field.set "#{user_name}@example.com"
    @register_page.newuserpassword_field.set 'testuser123'
    @register_page.confirm_button.click
    select('Software Developer', from: "Role")
    select('A different reason', from: "I'm signing up for GitLab because:")

    find("#jobs_to_be_done_other").set 'Whatever reason' if find('#jobs_to_be_done_other', visible: false).visible?

    @register_page.getstarted_button.click

    expect(page).to have_content 'Welcome to GitLab'
  end
end