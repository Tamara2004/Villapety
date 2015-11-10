class Cliente < ActiveRecord::Base
  has_many :cliente_recepcion
  has_many :recepcion, :through => :cliente_recepcion
  belongs_to :mascota
end
