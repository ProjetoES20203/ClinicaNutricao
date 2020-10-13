class Paciente < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nome, presence: true, length: {minimum: 4, maximum: 30}
  validates :altura, presence: true, length: {maximum: 3, minimum: 2}
  validates :cpf, presence: true, length: {minimum: 11, maximum: 11}
  validates :data_nascimento, presence: true
end
