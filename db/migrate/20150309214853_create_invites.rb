class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.references  :events, null:false
      t.references  :user, null:false
      t.string      :going
    end
  end
end
