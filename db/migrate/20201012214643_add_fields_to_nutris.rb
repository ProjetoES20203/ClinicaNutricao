class AddFieldsToNutris < ActiveRecord::Migration[6.0]
  def change
    add_column :nutris, :nome, :string
    add_column :nutris, :crn, :integer
  end
end
