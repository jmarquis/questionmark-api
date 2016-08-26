class SampleController < ActionController::API
  def index
    return { test: "success" }
  end
end
