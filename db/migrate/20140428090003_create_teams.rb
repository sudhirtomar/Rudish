class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :role_in
      t.string :partner_name
      t.integer :allocation_percent
      t.datetime :allocation_from
      t.datetime :allocation_to
      t.timestamps
    end
  end
end
