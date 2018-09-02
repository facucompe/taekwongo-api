class TrainingsController < ApiController
  def index
    render json: Training.where(user: current_user)
                         .order(created_at: :desc)
  end
end
