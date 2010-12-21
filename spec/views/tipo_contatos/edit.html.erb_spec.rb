require 'spec_helper'

describe "tipo_contatos/edit.html.erb" do
  before(:each) do
    @tipo_contato = assign(:tipo_contato, stub_model(TipoContato,
      :string => ""
    ))
  end

  it "renders the edit tipo_contato form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipo_contato_path(@tipo_contato), :method => "post" do
      assert_select "input#tipo_contato_string", :name => "tipo_contato[string]"
    end
  end
end
