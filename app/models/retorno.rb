class Retorno < ApplicationRecord
  belongs_to :consult
  has_one :medida
end
