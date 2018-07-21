class UsersController < ApiController
  skip_before_action :current_user, :authenticate_request, except: [:edit_device_token]

  def create
    user = User.new(create_params)
    if user.save
      render json: user
    else
      render json: user.errors, status: :bad_request
    end
  end

  private

  def create_params
    params.require(:user).permit(:email, :first_name, :last_name, :birth_date, :country,
                                 :gender, :password, :password_confirmation)
  end
end
