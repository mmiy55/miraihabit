class CreateUserChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :user_challenges do |t|
      t.boolean :completed, default: false
      t.references :user, null: false, foreign_key: true
      t.references :challenge, null: false, foreign_key: true
      t.json :schedule, default: {}

      t.timestamps
    end
  end
end
