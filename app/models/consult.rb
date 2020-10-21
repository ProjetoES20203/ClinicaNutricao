class Consult < ApplicationRecord
  belongs_to :paciente
  has_many :retornos, dependent: :destroy
  validates :prontuario, presence: true, length: {minimum: 5}
end
