class NutrisController < ApplicationController
  before_action :authenticate_nutri!
  def index
    @pacientes = Paciente.all().order(id: :desc)
  end
end
