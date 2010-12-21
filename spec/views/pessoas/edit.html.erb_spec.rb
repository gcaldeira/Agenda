require 'spec_helper'

describe "pessoas/edit.html.erb" do
  before(:each) do
    @pessoa = assign(:pessoa, stub_model(Pessoa,
      :nome => "MyString"
    ))
  end

  it "renders the edit pessoa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pessoa_path(@pessoa), :method => "post" do
      assert_select "input#pessoa_nome", :name => "pessoa[nome]"
    end
  end
end
