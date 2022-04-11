class AddOrderIdToGroup < ActiveRecord::Migration[6.1]
  def change
    add_column :groups, :order_id, :integer
  end
end
