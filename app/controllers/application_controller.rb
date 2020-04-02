class ApplicationController < ActionController::Base
  helper Openseadragon::OpenseadragonHelper
  # Adds a few additional behaviors into the application controller
  include Blacklight::Controller
  include Hydra::Controller::ControllerBehavior

  # Adds Hyrax behaviors into the application controller
  include Hyrax::Controller
  include Hyrax::ThemedLayoutController
  with_themed_layout '1_column'

  protect_from_forgery with: :exception
  skip_after_action :discard_flash_if_xhr # 2.1.0 upgrade

  private

  #def current_user
  #  @current_user ||= User.find(session[:user_id]) if session[:user_id]
  #end

  def after_sign_out_path_for(*)
    '/Shibboleth.sso/Logout'
  end
end
