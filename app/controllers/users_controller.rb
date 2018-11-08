class UsersController < ApiController
  skip_before_action :current_user, :authenticate_request, except: [:update, :me]

  def create
    user = User.new(create_params)
    if user.save
      render json: user
    else
      render json: user.errors, status: :bad_request
    end
  end

  def update
    if current_user.update(update_params)
      render json: current_user
    else
      render json: current_user.errors, status: :bad_request
    end
  end

  def me
    render json: current_user
  end

  private

  def update_params
    params.require(:user).permit(:email, :first_name, :last_name, :birth_date, :country,
                                 :gender)
  end

  def create_params
    params.require(:user).permit(:email, :first_name, :last_name, :birth_date, :country,
                                 :gender, :password, :password_confirmation)
  end
end
