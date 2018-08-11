class CompetitionsController < ApiController
  skip_before_action :current_user, :authenticate_request, only: [:index]

  def index
    render json: Competition.where('start_date > ?', Time.zone.today)
                            .order(start_date: :asc)
  end
end
