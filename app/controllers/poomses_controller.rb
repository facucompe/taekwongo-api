class PoomsesController < ApiController
  skip_before_action :current_user, :authenticate_request, only: [:index]

  def index
    render json: Poomse.all
  end
end
