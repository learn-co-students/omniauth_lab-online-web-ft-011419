class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.string :new
      t.string :create
      t.text :username
      t.text :password

      t.timestamps
    end
  end
end
