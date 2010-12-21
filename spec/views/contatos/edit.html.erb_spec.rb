require 'spec_helper'

describe "contatos/edit.html.erb" do
  before(:each) do
    @contato = assign(:contato, stub_model(Contato,
      :string => ""
    ))
  end

  it "renders the edit contato form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contato_path(@contato), :method => "post" do
      assert_select "input#contato_string", :name => "contato[string]"
    end
  end
end
