class ApiController < ApplicationController
  rescue_from ActionController::ParameterMissing, with: :render_nothing_bad_req
  rescue_from ActiveRecord::RecordNotFound, with: :render_nothing_not_found
  protect_from_forgery with: :null_session
  before_action :current_user, :authenticate_request

  private

  # Serializer methods
  def default_serializer_options
    { root: false }
  end

  def current_user
    @current_user ||= authentication_manager.current_user
  end

  def authentication_manager
    @authentication_manager ||= AuthenticationManager.new(request.headers)
  end

  def authenticate_request
    data = authentication_manager.authenticate_request
    format_authentication_data(data)
  end

  def format_authentication_data(data)
    return if data.blank?
    response.headers.merge!(data[:headers]) if data[:headers].present?
    return if data[:body].blank?
    render json: data[:body], status: status_for_response(data[:code])
    false
  end

  def status_for_response(code)
    case code
    when AuthenticationManager::NOT_AUTH_CODE
      :unauthorized
    when AuthenticationManager::TOKEN_EXPIRED_CODE
      :unauthorized
    when AuthenticationManager::SUCCESS_CODE
      :ok
    end
  end

  def render_nothing_bad_req
    head :bad_request
  end

  def render_nothing_not_found
    head :not_found
  end
end
