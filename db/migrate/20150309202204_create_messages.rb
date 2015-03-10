class CreateMessages < ActiveRecord::Migration
  def change
    create_table    :messages do |t|
      t.string      :body
      t.date        :date_sent
      t.references  :user, null:false
    end
  end
end
