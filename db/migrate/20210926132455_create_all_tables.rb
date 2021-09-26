class CreateAllTables < ActiveRecord::Migration[6.1]
  def change
    create_table :users, id: :uuid do |t|
      t.string :username, null: false, index: { unique: true }
      t.string :mobile_number, null: true, index: { unique: true }
      t.datetime :mobile_number_verified_at, null: true

      t.string :blood_group_id, null: true
      t.string :alternate_mobile_number, null: true, index: { unique: true }
      t.datetime :alternate_mobile_number_verified_at, null: true

      t.string :email, null: true, index: { unique: true }
      t.datetime :email_verified_at, null: true

      t.timestamps
    end

    create_table :cities, id: :uuid do |t|
      t.string :name, null: false, index: { unique: true }

      t.timestamps
    end

    create_table :states, id: :uuid do |t|
      t.string :name, null: false, index: { unique: true }

      t.timestamps
    end

    create_table :locations, id: :uuid do |t|
      t.string :name_of_place, null: false, index: { unique: true }
      t.string :city_id, null: false
      t.string :state_id, null: false
      t.integer :pincode, null: false

      t.timestamps
    end

    create_table :blood_groups, id: :uuid do |t|
      t.string :name, null: false, index: { unique: true }
    end

    create_table :donations, id: :uuid do |t|
      t.string :blood_group_id, null: false, index: { unique: true }
      t.string :location_id, null: true
      t.integer :status, null: false
      t.integer :quantity, null: false
      t.datetime :due_at, null: false

      t.timestamps
    end

    create_table :donor_donation_mappings, id: :uuid do |t|
      t.string :donation_id, null: false
      t.string :donor_id, null: false

      t.timestamps
    end

    create_table :receiver_donation_mappings, id: :uuid do |t|
      t.string :donation_id, null: false
      t.string :receiver_id, null: false

      t.timestamps
    end
  end
end
