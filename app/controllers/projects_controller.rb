class ProjectsController < ApplicationController

  def lists
    render json: Project.find(params[:projectId]).lists, include: :cards
  end

end
