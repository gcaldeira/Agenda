require 'spec_helper'

describe "tipo_contatos/new.html.erb" do
  before(:each) do
    assign(:tipo_contato, stub_model(TipoContato,
      :string => ""
    ).as_new_record)
  end

  it "renders new tipo_contato form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipo_contatos_path, :method => "post" do
      assert_select "input#tipo_contato_string", :name => "tipo_contato[string]"
    end
  end
end
