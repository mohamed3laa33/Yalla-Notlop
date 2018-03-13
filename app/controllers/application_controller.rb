class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :sanitize_devise_params, if: :devise_controller?

  def sanitize_devise_params
  	devise_parameter_sanitizer.permit(:sign_up , keys: [:name, :image])
  	devise_parameter_sanitizer.permit(:account_update , keys: [:name, :image])
  	
  end

  def layout_by_resource
  	if devise_controller? && resource_name == :user && action_name == 'new'
      "devise"
    else
      "application"
    end
  end
  

end
