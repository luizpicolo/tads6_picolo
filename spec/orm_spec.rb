require_relative 'support/livro'

RSpec.describe Tads6Picolo::ORM do

  before do
    @id = Livro.criar(
      titulo: 'aqui vai o titulo'
    )
    @path = Livro.path.to_s << "/#{@id}.yml"
  end

  describe "#criar" do
    it "deveria gerar um arquivo serializado no banco de dados" do
      expect(File.exist?(@path)).to be(true)
    end
  end

  describe "#listar" do
    it "deveria listar objetos deserializados do banco de dados" do
      Livro.listar.each do |livro|
        expect(livro).to be_an(Livro)
      end
    end
  end

  describe "#selecionar" do
    it "deveria retornar um objeto a partir de seu ID" do
      livro = Livro.selecionar(@id)
      expect(livro).to be_an(Livro)
      expect(livro.titulo).to eq('aqui vai o titulo')
    end

    it "não deveria retornar um objeto com ID inexistente" do
      livro = Livro.selecionar(99)
      expect(livro).not_to be_an(Livro)
    end
  end

  describe "#atualizar" do
    before do
      livro = Livro.selecionar(@id)
      livro.titulo = 'Novo titulo'
      Livro.atualizar(livro)
      @livro_novo = Livro.selecionar(@id)
    end

    it 'deveria retornar um registro atualizado' do
      expect(@livro_novo.titulo).to eq('Novo titulo')
    end
  end

  describe "#remove" do
    it "deveria remover um arquivo do banco de dados" do
      Livro.remove(@id)
      expect(File.exist?(@path)).to be(false)
    end
  end
end
