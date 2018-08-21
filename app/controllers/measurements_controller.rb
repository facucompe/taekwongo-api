class MeasurementsController < ApiController
  skip_before_action :current_user, :authenticate_request, only: [:index]

  def index
    render json: Measurement.where('training_id = ?', measurement_params[:training_id])
						 .order(created_at: :asc)
  end
  
  def measurement_params
	  params.require(:training_id)
  end
end


