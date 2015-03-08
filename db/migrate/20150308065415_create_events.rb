class CreateEvents < ActiveRecord::Migration
  def change
    create_table   :events do |t|
      t.string     :pic_url
      t.string     :title
      t.string     :category
      t.string     :location
      t.date       :date
      t.datetime   :time
      t.string     :description
      t.references :users, null: false
    end
  end
end


