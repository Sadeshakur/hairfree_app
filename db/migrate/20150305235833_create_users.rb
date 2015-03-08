class CreateUsers < ActiveRecord::Migration
  def change
    create_table   :users do |t|
      t.references :profiles
      t.references :events
      t.string     :email, null: false, unique: true
      t.string     :password_digest, null: false
      t.timestamps
    end
  end
end
