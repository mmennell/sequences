class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :firstnum
      t.integer :secondnum
      t.integer :thirdnum

      t.timestamps null: false
    end
  end
end
