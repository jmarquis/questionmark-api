class AddUuidToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :uuid, :uuid
  end
end
