class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.text :deck
      t.text :hand

      t.timestamps
    end
  end
end
