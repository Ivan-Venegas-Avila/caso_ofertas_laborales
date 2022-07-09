class Postulacion < ApplicationRecord
  belongs_to :postulante
  belongs_to :empresa
  belongs_to :oferta
end
