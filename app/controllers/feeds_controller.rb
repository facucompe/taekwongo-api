class FeedsController < ApiController
  skip_before_action :current_user, :authenticate_request, except: [:edit_device_token]

  def index
    render json: Feed.all
  end
end
