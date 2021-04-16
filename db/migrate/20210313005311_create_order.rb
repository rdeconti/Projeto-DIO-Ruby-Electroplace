class CreateOrder < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.datetime :paid_at
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
