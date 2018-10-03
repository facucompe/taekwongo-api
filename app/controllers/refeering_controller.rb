class RefeeringController < ApiController
  skip_before_action :current_user, :authenticate_request, only: [:index]

  def index
    if filter_param[:category].present?
      render json: RefeeringImage.where(category: filter_param[:category])
    else
      render json: RefeeringImage.all
    end
  end

  def filter_param
    params.permit(:category)
  end
end
