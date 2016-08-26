class SampleController < ActionController::API
  def index
    render json: { test: "successful" }
  end
end
