require 'tads6_picolo'

class Carro < Tads6Picolo::ORM
  attr_accessor :id, :modelo

  def initialize(hash)
    @modelo = hash.first[:modelo]
  end

  def self.path
     "db/carros"
  end
end

# Criar um novo carro
# Carro.criar(
#   modelo: 'Fusca'
# )

# Listar todos os carros
# puts Carro.listar

# Selecionar um carro pelo id
# puts Carro.selecionar(1)

# Atualizar um carro existente
# carro = Carro.selecionar(1)
# carro.modelo = "novo modelo"
# Carro.atualizar(carro)

# Remover carro
# Carro.remove(1)
