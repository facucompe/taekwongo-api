class TrainingsController < ApiController
  skip_before_action :current_user, :authenticate_request, only: [:index]

  def index
    render json: Training.where('user_id = ?', training_params[:user_id])
						 .order(created_at: :desc)
  end
  
  def training_params
	  params.require(:user_id)
  end
end


