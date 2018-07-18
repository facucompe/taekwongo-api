class CompetitionsController < ApiController
  skip_before_action :current_user, :authenticate_request, except: [:edit_device_token]

  def index
    render json: Competition.all
  end
end
