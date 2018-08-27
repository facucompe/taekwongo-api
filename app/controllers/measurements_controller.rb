class MeasurementsController < ApiController
  def index
    render json: Training.find(params.require(:id)).measurements.order(created_at: :asc)
  end
end


