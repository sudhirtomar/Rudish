class CreateSubSkills < ActiveRecord::Migration
  def change
    create_table :sub_skills do |t|
      t.integer :skill_set_id
      t.string :name
      t.string :more_info
      t.timestamps
    end
  end
end
