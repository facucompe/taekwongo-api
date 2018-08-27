class MeasurementsController < ApiController
  def index
    render json: Measurement.where(training_id:  params.require(:id))
						 		.order(created_at: :asc)
  end
end


