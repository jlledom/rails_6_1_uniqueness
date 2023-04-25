class AddUniqueIndexToCoach < ActiveRecord::Migration[6.1]
  def change
    remove_index :coaches, :team_id
    add_index :coaches, :team_id, unique: true
  end
end
