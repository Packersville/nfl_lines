class CreateUserPicks < ActiveRecord::Migration
  def change
    create_table :user_picks do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :spread

      t.timestamps
    end
  end
end
