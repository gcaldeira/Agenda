require 'spec_helper'

describe "enderecos/show.html.erb" do
  before(:each) do
    @endereco = assign(:endereco, stub_model(Endereco,
      :logradouro => "Logradouro",
      :numero => "Numero",
      :complemento => "Complemento",
      :bairro => "Bairro",
      :cidade => "Cidade",
      :estado => "Estado",
      :cep => "Cep",
      :lat => "Lat",
      :long => "Long"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Logradouro/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Numero/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Complemento/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Bairro/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cidade/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Estado/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cep/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Lat/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Long/)
  end
end
