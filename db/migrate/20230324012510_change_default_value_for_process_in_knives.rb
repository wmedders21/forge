class ChangeDefaultValueForProcessInKnives < ActiveRecord::Migration[7.0]
  def change
    change_column_default :knives, :process, 0
  end
end
