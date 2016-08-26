class SampleController < ActionController::API
  def index
    render json: { test: "success" }
  end
end
