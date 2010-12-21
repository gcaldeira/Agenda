require 'spec_helper'

describe "tipo_contatos/show.html.erb" do
  before(:each) do
    @tipo_contato = assign(:tipo_contato, stub_model(TipoContato,
      :string => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
