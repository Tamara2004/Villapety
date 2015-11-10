class Recepcion < ActiveRecord::Base
  has_many :cliente_recepcion
  has_many :cliente, :through => :cliente_recepcion
end
