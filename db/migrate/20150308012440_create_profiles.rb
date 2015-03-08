class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :f_name
      t.string :l_name
      t.string :sex
      t.date   :born_on
      t.string :phone
      t.string :email, null: false, unique: true
      t.string :password_digest, null: false
      t.timestamps
    end
  end
end
