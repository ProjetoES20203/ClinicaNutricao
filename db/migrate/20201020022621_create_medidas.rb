class CreateMedidas < ActiveRecord::Migration[6.0]
  def change
    create_table :medidas do |t|
      t.float :circunfTorax
      t.float :circunfQuadril
      t.float :peso
      t.float :circunfCintura
      t.float :circunfPantur
      t.float :circunfCoxa
      t.float :circunfBraco
      t.float :circunfAbdomem
      t.references :retorno, null: false, foreign_key: true

      t.timestamps
    end
  end
end
