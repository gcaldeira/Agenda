require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TipoContato do
  before(:each) do
      @tipo = TipoContato.new
  end
  
  it "Valida inclusão de tipos de contato" do
    @tipo.tipo.should be_nil
    @tipo.tipo = "Telefone"
    @tipo.tipo.should == "Telefone"
    @tipo.save.should
  end
end
