require 'spec_helper'

describe "contatos/show.html.erb" do
  before(:each) do
    @contato = assign(:contato, stub_model(Contato,
      :string => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
