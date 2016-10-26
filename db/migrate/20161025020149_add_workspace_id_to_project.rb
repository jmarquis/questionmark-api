class AddWorkspaceIdToProject < ActiveRecord::Migration[5.0]
  def change
    add_reference :projects, :workspace, foreign_key: true
  end
end
