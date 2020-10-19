class CreateRetornos < ActiveRecord::Migration[6.0]
  def change
    create_table :retornos do |t|
      t.text :prontuario
      t.datetime :data
      t.boolean :estado
      t.references :consult, null: false, foreign_key: true

      t.timestamps
    end
  end
end
