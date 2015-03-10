class CreateUsers < ActiveRecord::Migration
  def change
    create_table   :users do |t|
      t.references :accounts
      t.references :profiles
      t.references :events
      t.string     :email, unique: true
      t.string     :password_digest, unique: true
      t.timestamps
      t.references :profile
      end
  end
end
