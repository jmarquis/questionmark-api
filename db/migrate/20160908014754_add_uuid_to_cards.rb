class AddUuidToCards < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :uuid, :uuid
  end
end
