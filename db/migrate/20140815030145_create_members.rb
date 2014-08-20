class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :email
      t.string :password_digest
      t.integer :role
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end