class ProjectsController < ApplicationController

  def lists
    render json: Project.find(params[:projectId]).lists, include: { cards: { only: :name }}
  end

end
