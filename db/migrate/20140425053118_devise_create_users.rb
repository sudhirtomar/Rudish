class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at
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

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
