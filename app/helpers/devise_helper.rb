module DeviseHelper
  # override devise error messages to use them in views
  def devise_error_messages!
    messages = resource.errors
  end
end
