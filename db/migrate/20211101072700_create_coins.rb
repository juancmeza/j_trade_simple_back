class CreateCoins < ActiveRecord::Migration[6.1]
  def change
    create_table :coins do |t|
      t.string :name
      t.string :symbol
      t.decimal :amount
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
