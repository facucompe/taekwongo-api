class SessionsController < ApiController
  skip_before_action :current_user, :authenticate_request, except: [:edit_device_token]

  def create
    if authenticated_user?
      token_data = AuthenticableEntity.generate_access_token(user)
      render json: {
        access_token: token_data[:token], renew_id: token_data[:renew_id]
      }, status: :ok
    else
      render_error('Invalid email or password', :unauthorized)
    end
  end

  def invalidate_all
    current_user.generate_verification_code
    if current_user.save
      head :ok
    else
      render json: { error: 'Error invalidating all tokens' }, status: 500
    end
  end

  def reset_password
    reset_password_user.send_reset_password_instructions
    head :ok
  end

  private

  def reset_password_user
    User.find_by!(email: params.require(:email))
  end

  def render_error(error_message, status)
    render json: { error: error_message }, status: status
  end

  def authenticated_user?
    user.present? && user.valid_password?(authenticate_params[:password])
  end

  def user
    @user ||= User.find_by(email: authenticate_params[:email])
  end

  def authenticate_params
    params.require(:session).permit(:email, :password)
  end
end
