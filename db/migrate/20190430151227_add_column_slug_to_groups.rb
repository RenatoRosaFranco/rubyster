class AddColumnSlugToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :slug, :string
  end
end
