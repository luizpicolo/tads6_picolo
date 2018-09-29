RSpec.describe Tads6Picolo do
  it "has a version number" do
    expect(Tads6Picolo::VERSION).not_to be nil
  end

  it "Deveria mostrar as palavras Hello World" do
    x = Tads6Picolo::HelloWorld.new
    expect(x.say).to eq("Hello World")
  end
end
