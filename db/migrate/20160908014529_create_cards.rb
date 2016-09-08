class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :description
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
