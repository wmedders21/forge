class CreateKnives < ActiveRecord::Migration[7.0]
  def change
    create_table :knives do |t|
      t.string :customer_name
      t.string :blade
      t.string :handle
      t.string :pins
      t.string :guard
      t.string :process
      t.string :finish
      t.string :sheath
      t.string :photo_url

      t.timestamps
    end
  end
end
