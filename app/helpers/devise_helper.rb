module DeviseHelper
  def devise_error_messages!
    messages = resource.errors
  end
end
