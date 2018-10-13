# Tads6Picolo

Este pequeno projeto foi desenvolvido como parte das aulas de Tópicos Especiais em Tecnologia da Informação no Institulo Federal de Mato Grosso do Sul Campus de Naviraí.

A gem tem como objeto demostrar aos estudantes o uso e a aplicação de bibliotecas (gem) para o encapsulamento funcionalidades genéricas que podem ser utilizadas em outros projetos. Outro objetivo atrelado a esta atividade relaciona-se ao conteúdo teórico sobre ORM (Mapeamento Objeto Relacional), os quais foram apresentados em aula e aplicados de forma prática neste trabalho.

## Instalação

Caso use um arquivo Gemfile, adicione o código abaixo:

```ruby
gem 'tads6_picolo'
```

Logo após instale as dependências:

    $ bundle install

Ou, instale diretamente executando o código abaixo em seu terminal:

    $ gem install tads6_picolo

## Como utilizar

Para utilizar a `gem` deve-se realizar os seguintes passos:

Primeiro crie um novo arquivo e adicione uma classe a qual você deseja persistir seguindo as especificações abaixo:

```ruby
# Require necessário
require 'tads6_picolo'

# Sua classe deve herdar a classe Tads6Picolo::ORM
class Livro < Tads6Picolo::ORM
  # Toda classe deve conter um :ID obrigatoriamente
  attr_accessor :id, :modelo

  # O construtor deve seguir o exemplo abaixo
  def initialize(hash)
    @titulo = hash.first[:modelo]
  end

  # Este método deve ser reescrito obrigatoriamente com o
  # caminho para seu banco de dados 'db/carros'
  def self.path
    'local/onde/deseja/salvar/os/dados'
  end
end
```

## Passo a Passo

Crie o diretório com o caminho especificado no método `self.path`

### Criar um novo registro:
```ruby
Carro.criar(
  modelo: 'Fusca 5000'
)
```

### Listar todos os registros:
```ruby
puts Carro.listar
```

### Selecionar um registro específico
```ruby
puts Carro.selecionar(1)
```

### Atualizar um registro específico
```ruby
carro = Carro.selecionar(1)
carro.modelo = "novo modelo"
Carro.atualizar(carro)
```

### Remover um registro específico
```ruby
Carro.remove(1)
```

## Importante

 - O atributo id deve estar contido, contudo ele não deve ser inicializado.
 - O método path obrigatoriamente deve ser reescrito para o local onde você deseja salvar os dados

```ruby
  def self.path
    'local/onde/deseja/salvar/os/dados'
  end
```

## License

A gem está disponível como código aberto sob os termos do [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Espera-se que todos que interagem nas bases de código do projeto Tads6Picolo, rastreadores de problemas, salas de bate-papo e listas de discussão sigam as
 [code of conduct](https://github.com/luizpicolo/tads6_picolo/blob/master/CODE_OF_CONDUCT.md).
