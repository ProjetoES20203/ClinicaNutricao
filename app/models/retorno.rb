class Retorno < ApplicationRecord
  belongs_to :consult
  has_one :medida
  validates :data, uniqueness: true, allow_blank: true
  validates_date :data, on_or_after: lambda { DateTime.current+1 }
end
