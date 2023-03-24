class ChangeProcessToIntegerInKnife < ActiveRecord::Migration[7.0]
  def change
    change_column :knives, :process, :integer, using: 'process::integer', default: 0
  end
end
