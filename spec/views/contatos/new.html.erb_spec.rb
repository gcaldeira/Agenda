require 'spec_helper'

describe "contatos/new.html.erb" do
  before(:each) do
    assign(:contato, stub_model(Contato,
      :string => ""
    ).as_new_record)
  end

  it "renders new contato form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contatos_path, :method => "post" do
      assert_select "input#contato_string", :name => "contato[string]"
    end
  end
end
