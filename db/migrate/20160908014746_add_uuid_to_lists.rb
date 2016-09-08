class AddUuidToLists < ActiveRecord::Migration[5.0]
  def change
    add_column :lists, :uuid, :uuid
  end
end
