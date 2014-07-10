class CreateUniqueWhitelines < ActiveRecord::Migration
  def change
    create_table :unique_whitelines do |t|
      t.string :softbank_phone_number

      t.timestamps
    end
  end
end
