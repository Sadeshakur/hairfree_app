class CreateProfiles < ActiveRecord::Migration
  def change
    create_table   :profiles do |t|
      t.string     :image_url
      t.string     :name
      t.string     :location
      t.string     :bio
      t.string     :hair
      t.string     :user_type
      t.references :events
      t.references :users, null: false
      t.timestamps
    end
  end
end
