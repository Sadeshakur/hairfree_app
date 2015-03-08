class CreateProfiles < ActiveRecord::Migration
  def change
    create_table   :profiles do |t|
      t.references :users, null: false
      t.references :events
      t.string     :location
      t.date       :hair
      t.timestamps
    end
  end
end
