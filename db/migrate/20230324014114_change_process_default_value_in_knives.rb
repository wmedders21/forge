class ChangeProcessDefaultValueInKnives < ActiveRecord::Migration[7.0]
  def change
    change_column_default :knives, :process, "Forging"
  end
end
