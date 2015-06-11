class AddDateToHangout < ActiveRecord::Migration
  def change
    add_column :hangouts, :date, :datetime
  end
end
