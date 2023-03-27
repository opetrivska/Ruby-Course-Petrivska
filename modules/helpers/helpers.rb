module Helpers

  def login_user(login,password)
    @login_page = LoginPage.new
    @login_page.load

    @login_page.login_field.set login
    @login_page.password_field.set password
    @login_page.submit_button.click
  end
end
