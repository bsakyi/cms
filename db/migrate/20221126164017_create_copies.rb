class CreateCopies < ActiveRecord::Migration[7.0]
   def change
    create_table :copies do |t|
      

      t.timestamps
    end
  end
end
