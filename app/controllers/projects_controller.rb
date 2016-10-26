class ProjectsController < ApplicationController

  def index
    render json: Project.includes(:lists).where(workspace_id: params[:workspace_id]).inject({}) { |projects, project|
      projects[project.id] = project.as_json.merge({ list_ids: project.list_ids })
      projects
    }
  end

end
