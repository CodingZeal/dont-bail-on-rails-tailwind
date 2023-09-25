class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :username, null: false
      t.string :email, null: false
      t.boolean :active, null: false, default: true
      t.string :role, null: false, default: 'guest'
      t.text :bio
      t.string :dino_costume_size

      t.timestamps
    end
  end
end
