class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|

      t.integer :emp_id, default: 0, null: false
      t.integer :user_id
      t.string :job_profile
      t.string :band_grad
      t.string :designation
      t.string :organization
      t.string :bussiness_group
      t.string :alternate_email
      t.string :skype_id
      t.string :facebook_profile
      t.string :twitter_profile
      t.string :linkedin_profile
      t.string :seat_allocation
      t.string :location
      t.string :office_address
      t.string :current_address
      t.string :legal_address
      t.string :about_me
      t.string :marital_status
      t.integer :voip_extension 
      t.integer :mobile_contact
      t.integer :emergency_contact
      t.integer :total_exp
      t.datetime :date_of_join
      t.datetime :birthday
      t.datetime :aniversary    
      t.timestamps
    end
  end
end
