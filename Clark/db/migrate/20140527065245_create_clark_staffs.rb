class CreateClarkStaffs < ActiveRecord::Migration
  def change
    create_table :clark_staffs do |t|
      t.string :name
      t.string :department
      t.datetime :birthday
      t.string :gender

      t.timestamps
    end
  end
end
