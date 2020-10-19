class Consult < ApplicationRecord
  belongs_to :paciente
  has_many :retornos, dependent: :destroy
end
