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

Para utilizar a gem deve-se realizar os seguintes passos:

Primeiro crie um classe a qual você deseja persistir:

```ruby
require 'tads6_picolo'

class Livro < Tads6Picolo::ORM
  attr_accessor :id, :titulo

  def initialize(hash)
    @titulo = hash.first[:titulo]
  end

  def self.path
    'local/onde/deseja/salvar/os/dados'
  end
end
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
