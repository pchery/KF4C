class RemoveNameFromIdeas < ActiveRecord::Migration
  def change
    remove_column :ideas, :name, :string
  end
end
