class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string     :f_name
      t.string     :l_name
      t.date       :born_on
      t.datetime   :phone
    end
  end
end
