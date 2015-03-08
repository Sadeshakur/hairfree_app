class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :f_name
      t.string :l_name
      t.string :location
      t.date   :hair
      t.timestamps
    end
  end
end
