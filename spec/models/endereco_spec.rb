require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Endereco do
  before(:each) do
      @endereco_attributes = {
        :logradouro => "Rua do limoeiro",
        :numero => "168",
        :complemento => "AP 206",
        :bairro => "Centro",
        :cidade => "Belo Horizonte",
        :estado => "Minas Gerais",
        :cep => "30500-200",
        :lat => "-19.916427",
        :long => "-43.93964"
      }
  end
  
  
  context 'Validação de cadastros gerais' do
    it { Endereco.new.should be_an_instance_of(Endereco) }
    
    it 'Validação de criação de endereco' do
      @endereco = Endereco.create! @endereco_attributes
      @endereco.should be_valid
      @endereco.save.should == true
    end
    
    it 'Validação de criação de tipo de contato' do
       @tipo1 = TipoContato.new
       @tipo1.tipo = "Telefone"
       @tipo1.should be_valid
       @tipo1.save.should == true
       
       @tipo2 = TipoContato.new
       @tipo2.tipo = "E-mail"
       @tipo2.should be_valid
       @tipo2.save.should == true
    end
    
    it 'Validação de criação de contatos' do
      @contato1 = Contato.new
      @contato1.contato = '(31)8484-6564'
      @contato1.tipo_contato = @tipo1
      @contato1.should be_valid
      @contato1.save.should == true
      
      @contato2 = Contato.new
      @contato2.contato = 'caldeira.santos@gmail.com'
      @contato2.tipo_contato = @tipo2
      @contato2.should be_valid
      @contato2.save.should == true
    end
    
    it 'Validação de criação de pessoa' do
      @pessoa = Pessoa.new
      @pessoa.nome = "Gustavo"
      @pessoa.enderecos << @endereco
      @pessoa.contatos << @contato1
      @pessoa.contatos << @contato2
      @pessoa.should be_valid
      @pessoa.save.should == true
    end
    
  end
  
end

