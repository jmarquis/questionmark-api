class WorkspacesController < ApplicationController

  def index
    render json: Workspace.includes(:projects).all.inject({}) { |workspaces, workspace|
      workspaces[workspace.id] = workspace.as_json.merge({ project_ids: workspace.project_ids })
      workspaces
    }
  end

  def show
    workspace = Workspace.includes(:projects).find(params[:id])
    render json: workspace.as_json.merge({ project_ids: workspace.project_ids })
  end

end
