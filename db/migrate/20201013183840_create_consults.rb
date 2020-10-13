class CreateConsults < ActiveRecord::Migration[6.0]
  def change
    create_table :consults do |t|
      t.text :prontuario
      t.datetime :data
      t.references :paciente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
