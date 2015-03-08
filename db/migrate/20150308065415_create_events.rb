class CreateEvents < ActiveRecord::Migration
  def change
    create_table   :events do |t|
      t.references :users, null: false
      t.string     :title
      t.string     :event_type
      t.string     :location
      t.date       :date
      t.date       :time
      t.string     :description
    end
  end
end
