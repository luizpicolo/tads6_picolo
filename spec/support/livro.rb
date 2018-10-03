require 'tads6_picolo'

class Livro < Tads6Picolo::ORM
  attr_accessor :id, :titulo

  def initialize(hash)
    @titulo = hash.first[:titulo]
  end

  def self.path
    File.expand_path(File.dirname(__FILE__)) << '/tmp/db/livros'
  end
end
