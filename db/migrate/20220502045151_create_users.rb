class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email,null:false
      t.string :phone
      t.string :password

      t.timestamps
    end
  end
end
