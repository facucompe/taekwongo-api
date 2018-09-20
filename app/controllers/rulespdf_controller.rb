class RulespdfController < ApiController
  skip_before_action :current_user, :authenticate_request, only: [:index]

  def index
    render json: Rulespdf.order('version desc').first
  end
end
