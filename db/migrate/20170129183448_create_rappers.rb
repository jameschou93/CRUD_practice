class CreateRappers < ActiveRecord::Migration[5.0]
  def change
    create_table :rappers do |t|
      t.string :name
      t.integer :albums

      t.timestamps
    end
  end
end
