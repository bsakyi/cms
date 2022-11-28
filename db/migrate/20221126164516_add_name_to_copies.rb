class AddNameToCopies < ActiveRecord::Migration[7.0]
  def change
    add_column("copies", "name", :string, :limit=>25)
    add_column("copies", "visible", :boolean, :default=> false)
    add_column("copies", "position", :integer)
   
  end
end
