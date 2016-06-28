class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :data

      t.timestamps null: false
    end
  end
end
