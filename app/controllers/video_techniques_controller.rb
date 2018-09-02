class VideoTechniquesController < ApiController
  skip_before_action :current_user, :authenticate_request, only: [:index]

  def index
    render json: VideoTechnique.where(video_type: video_params[:category])
  end

  private

  def video_params
    params.permit(:category)
  end
end
