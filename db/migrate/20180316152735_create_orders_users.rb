class CreateOrdersUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :orders_users do |t|
      t.references :order, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
