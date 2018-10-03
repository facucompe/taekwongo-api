class FeedsController < ApiController
  skip_before_action :current_user, :authenticate_request, except: [:edit_device_token]

  def index
    if feed_param[:category].present?
      render json: Feed.where(category: feed_param[:category]).order(id: :desc)
    else
      render json: Feed.all.order(id: :desc)
    end
  end

  private

  def feed_param
    params.permit(:category)
  end
end
