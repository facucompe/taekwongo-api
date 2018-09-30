class MeasurementsController < ApiController
  def index
    render json: training.measurements.order(created_at: :asc)
  end

  def create
    measurements = create_params.map do |measurement|
      Measurement.create(measurement.merge(training: training))
    end
    render json: measurements
  end

  private

  def training
    Training.find(params.require(:id))
  end

  def create_params
    params.permit(measurements: [:magnitude]).require(:measurements)
  end
end
