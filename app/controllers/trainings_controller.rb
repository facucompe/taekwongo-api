class TrainingsController < ApiController
  def index
    render json: Training.where(user: current_user)
                         .order(created_at: :desc)
  end

  def create
    training = Training.new(create_params)
    if training.save
      render json: training, status: :created
    else
      render json: training.errors
    end
  end

  private

  def create_params
    params.require(:training).permit(:title, :training_type).merge(user: current_user)
  end
end
