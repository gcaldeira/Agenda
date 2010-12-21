require 'spec_helper'

describe "enderecos/new.html.erb" do
  before(:each) do
    assign(:endereco, stub_model(Endereco,
      :logradouro => "MyString",
      :numero => "MyString",
      :complemento => "MyString",
      :bairro => "MyString",
      :cidade => "MyString",
      :estado => "MyString",
      :cep => "MyString",
      :lat => "MyString",
      :long => "MyString"
    ).as_new_record)
  end

  it "renders new endereco form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => enderecos_path, :method => "post" do
      assert_select "input#endereco_logradouro", :name => "endereco[logradouro]"
      assert_select "input#endereco_numero", :name => "endereco[numero]"
      assert_select "input#endereco_complemento", :name => "endereco[complemento]"
      assert_select "input#endereco_bairro", :name => "endereco[bairro]"
      assert_select "input#endereco_cidade", :name => "endereco[cidade]"
      assert_select "input#endereco_estado", :name => "endereco[estado]"
      assert_select "input#endereco_cep", :name => "endereco[cep]"
      assert_select "input#endereco_lat", :name => "endereco[lat]"
      assert_select "input#endereco_long", :name => "endereco[long]"
    end
  end
end
