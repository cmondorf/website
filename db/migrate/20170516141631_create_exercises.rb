class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.bigint :track_id, null: false

      t.string :title, null: false
      t.boolean :core, default: false, null: false
      t.integer :position, null: false

      t.timestamps
    end

    add_foreign_key :exercises, :tracks
  end
end