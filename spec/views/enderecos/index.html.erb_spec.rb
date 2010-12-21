require 'spec_helper'

describe "enderecos/index.html.erb" do
  before(:each) do
    assign(:enderecos, [
      stub_model(Endereco,
        :logradouro => "Logradouro",
        :numero => "Numero",
        :complemento => "Complemento",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :estado => "Estado",
        :cep => "Cep",
        :lat => "Lat",
        :long => "Long"
      ),
      stub_model(Endereco,
        :logradouro => "Logradouro",
        :numero => "Numero",
        :complemento => "Complemento",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :estado => "Estado",
        :cep => "Cep",
        :lat => "Lat",
        :long => "Long"
      )
    ])
  end

  it "renders a list of enderecos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Logradouro".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Numero".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Complemento".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Lat".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Long".to_s, :count => 2
  end
end
