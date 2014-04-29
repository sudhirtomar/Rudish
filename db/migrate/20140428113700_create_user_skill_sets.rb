class CreateUserSkillSets < ActiveRecord::Migration
  def change
    create_table :user_skill_sets do |t|
      t.integer :user_id
      t.integer :skill_set_id
      t.timestamps
    end
  end
end
