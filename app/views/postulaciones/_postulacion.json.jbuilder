json.extract! postulacion, :id, :postulante_id, :empresa_id, :oferta_id, :created_at, :updated_at
json.url postulacion_url(postulacion, format: :json)
