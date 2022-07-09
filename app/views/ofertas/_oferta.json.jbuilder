json.extract! oferta, :id, :puesto, :descripcion, :vacantes, :rango_salarial, :fecha_inicio, :modalidad, :region, :empresa_id, :created_at, :updated_at
json.url oferta_url(oferta, format: :json)
