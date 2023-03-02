class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :capital
      t.string :currency
      t.string :language
      t.string :head_of_state
      t.integer :population

      t.timestamps
    end
  end
end
