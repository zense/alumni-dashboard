class Updatecolumn < ActiveRecord::Migration[5.1]
  def change
    change_column_null :regs, :guests, false
  end
end
