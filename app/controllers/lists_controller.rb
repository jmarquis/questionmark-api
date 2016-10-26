class ListsController < ApplicationController

  def index
    render json: List.where(project_id: params[:project_id]).inject({}) { |lists, list|
      lists[list.id] = list.as_json.merge({ card_ids: list.card_ids })
      lists
    }
  end

  def show
    render json: List.includes(:cards).find(params[:id])
  end

end
