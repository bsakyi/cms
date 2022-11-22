class CreateDoNothinYets < ActiveRecord::Migration[7.0]
  def change
    create_table :do_nothin_yets do |t|

      t.timestamps
    end
  end
end
