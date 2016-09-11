class ListsController < ApplicationController

  def index
    render json: Project.find(params[:project_id]).lists, include: :cards
  end

end
