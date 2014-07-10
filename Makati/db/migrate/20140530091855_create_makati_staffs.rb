class CreateMakatiStaffs < ActiveRecord::Migration
  def change
    create_table :makati_staffs, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :name
      t.integer :age
      t.string :department
      t.string :gender

      t.timestamps
    end
  end
end
