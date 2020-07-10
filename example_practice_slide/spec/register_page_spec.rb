require_relative "../pages/register_page"

# Register fail
@register_fail = RegisterPage.new
@register_fail.When_not_input_value_for_all_input
@register_fail.display_all_message_validate_fail

# Register success
@register_success = RegisterPage.new
@register_success.when_input_all_text_to_register_success("you input", "you input", "you input", "you input", "you input")
@register_success.display_notification_Check_email_When_Register_Suceessfully
