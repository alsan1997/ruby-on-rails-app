class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :todolists, :title, :tdl
  end
end
