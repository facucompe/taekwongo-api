class FeedsController < ApiController
  skip_before_action :current_user, :authenticate_request, except: [:edit_device_token]

  def index
    byebug
    render json: Feed.where(category: feed_param[:category])
  end

  private

  def feed_param
    params.permit(:category)
  end
end
