class OrdersUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :orders_users, :id => false do |t|
      t.integer :order_id
      t.integer :user_id
    end
  end
end
