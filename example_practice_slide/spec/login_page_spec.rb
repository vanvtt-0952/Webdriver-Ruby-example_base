require_relative "../pages/login_page"

@login = LoginPage.new
@login.When_input_value_for_all_input("your_email", "your_pass")
@login.display_account_page
