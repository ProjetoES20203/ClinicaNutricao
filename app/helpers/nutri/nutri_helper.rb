module Nutri::NutriHelper

  def nutricionista_existe
    if (!Nutri.all().empty?)
      return true
    else
      return false
    end
  end
end
