class AddRightNumbersToAnswer < ActiveRecord::Migration[7.0]
  def change
    add_column :answers, :right_numbers, :text, array: true
  end
end
