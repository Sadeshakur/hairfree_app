class CreateProfiles < ActiveRecord::Migration
  def change
    create_table   :profiles do |t|
      t.references :users, null: false
      t.string     :name
      t.string     :image_url
      t.string     :location
      t.string     :bio
      t.string     :hair
      t.string     :type
      t.string     :gender
      t.string     :phone
      t.references :events
      t.timestamps
    end
  end
end
