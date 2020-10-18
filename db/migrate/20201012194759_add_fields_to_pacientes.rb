class AddFieldsToPacientes < ActiveRecord::Migration[6.0]
  def change
    add_column :pacientes, :nome, :string
    add_column :pacientes, :cpf, :integer
    add_column :pacientes, :altura, :integer
    add_column :pacientes, :data_nascimento, :datetime
  end
end
