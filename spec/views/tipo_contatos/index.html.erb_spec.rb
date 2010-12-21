require 'spec_helper'

describe "tipo_contatos/index.html.erb" do
  before(:each) do
    assign(:tipo_contatos, [
      stub_model(TipoContato,
        :string => ""
      ),
      stub_model(TipoContato,
        :string => ""
      )
    ])
  end

  it "renders a list of tipo_contatos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
