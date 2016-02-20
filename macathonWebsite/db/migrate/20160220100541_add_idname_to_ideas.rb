class AddIdnameToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :idname, :string
  end
end
