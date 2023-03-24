class ChangeProcessToStringInKnives < ActiveRecord::Migration[7.0]
  def change
    change_column :knives, :process, :string
  end
end
