class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :email
      t.string :fname
      t.string :lname
      t.text :message

      t.timestamps
    end
  end
end
