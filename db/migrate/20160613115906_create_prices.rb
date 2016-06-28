class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.float :money
      t.decimal :money1 , :precision => 10 , :scale => 5
      t.timestamps null: false
    end
  end
end
