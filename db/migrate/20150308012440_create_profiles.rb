class CreateProfiles < ActiveRecord::Migration
  def change
    create_table   :profiles do |t|
      t.string     :profile_pic
      t.string     :username
      t.string     :user_type
      t.string     :website
      t.string     :location
      t.string     :bio
      t.string     :hair
      t.references :events
      t.references :user
      t.timestamps
    end
  end
end
