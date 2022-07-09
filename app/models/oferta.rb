class Oferta < ApplicationRecord
  belongs_to :empresa
  has_many :postulaciones
end
