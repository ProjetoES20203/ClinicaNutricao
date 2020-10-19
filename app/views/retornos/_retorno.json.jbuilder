json.extract! retorno, :id, :prontuario, :data, :estado, :consult_id, :created_at, :updated_at
json.url retorno_url(retorno, format: :json)
