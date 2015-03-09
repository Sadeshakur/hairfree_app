class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string     :full_name
      t.date       :born_on
      t.string     :phone
      t.references :user, null: false
    end
  end
end
