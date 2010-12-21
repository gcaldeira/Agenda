require 'spec_helper'

describe "pessoas/show.html.erb" do
  before(:each) do
    @pessoa = assign(:pessoa, stub_model(Pessoa,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
  end
end
