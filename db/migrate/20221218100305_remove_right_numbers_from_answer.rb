class RemoveRightNumbersFromAnswer < ActiveRecord::Migration[7.0]
  def change
    remove_column :answers, :right_numbers, :string
  end
end
