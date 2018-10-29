class CreateChefs < ActiveRecord::Migration[5.2]
  def change
    create_table :chefs do |t|
      t.integer :delivery_range
      t.time :working_hours
      t.string :working_days
      t.boolean :verification
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
