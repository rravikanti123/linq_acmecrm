class ApplicationController < ActionController::API
  before_action :authenticate_request

  private

  def authenticate_request
    expected_token = "Ravikanti"
    actual_token = request.headers["Authorization"]

    unless actual_token == expected_token
      render json: { error: "Unauthorized access" }, status: :unauthorized
    end
  end
end




