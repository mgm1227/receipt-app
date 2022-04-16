class CreateReceipts < ActiveRecord::Migration[6.0]
  def change
    create_table :receipts do |t|
      t.references :user, null: false, foreign_key: true
      t.integer    :category_id, null: false
      t.text       :comment
      t.date       :date,        null: false
      t.timestamps
    end
  end
end
