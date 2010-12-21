require 'spec_helper'

describe "contatos/index.html.erb" do
  before(:each) do
    assign(:contatos, [
      stub_model(Contato,
        :string => ""
      ),
      stub_model(Contato,
        :string => ""
      )
    ])
  end

  it "renders a list of contatos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
