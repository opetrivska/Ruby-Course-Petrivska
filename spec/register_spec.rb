feature 'User registration', js: true do
  scenario 'User can create an account' do
    visit('https://gitlab.testautomate.me/users/sign_up')

    find('#new_user_first_name').set 'test20'
    find('#new_user_last_name').set 'user20'
    find('#new_user_username').set 'test2330'
    find('#new_user_email').set 'email331@example.com'
    find('#new_user_password').set 'test123456'
    find(:xpath, '//*[@id="new_new_user"]/div[7]/input').click
    find(:xpath, '//*[@id="user_role"]/option[3]').click
    find(:xpath, '//*[@id="user_registration_objective"]/option[5]').click
    find(:xpath, '//*[@id="edit_user_3885"]/div[5]/div/button').click

    expect(page).to have_content 'Welcome to GitLab'
  end
end
