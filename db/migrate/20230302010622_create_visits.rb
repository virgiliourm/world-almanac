class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.integer :country_id
      t.integer :user_id
      t.integer :year

      t.timestamps
    end
  end
end
