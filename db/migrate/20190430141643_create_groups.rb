class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :email
      t.string :website
      t.string :address
      t.string :region
      t.string :country

      t.timestamps
    end
  end
end
