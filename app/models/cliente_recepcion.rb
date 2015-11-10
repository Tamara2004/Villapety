class ClienteRecepcion < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :recepcion
end
