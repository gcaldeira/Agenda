require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Contato do
  before(:each) do
      @tipo = TipoContato.new
      @contato = Contato.new
  end
  
  it "Valida inclusão de contatos" do
    @tipo.tipo.should be_nil
    @tipo.tipo = "Telefone"
    @tipo.tipo.should == "Telefone"
    @tipo.save.should
    
    @contato.contato.should be_nil
    @contato.contato = "31-8484-6564"
    @contato.contato.should == "31-8484-6564"
    @contato.tipo_contato.should be_nil
    @contato.tipo_contato = @tipo
    @contato.tipo_contato.should == @tipo
    @contato.save.should
    
  end
end
