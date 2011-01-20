require 'helper.rb'

class TestCpf < Test::Unit::TestCase
  should "generate a valid cpf with mask" do
    cpf = BrFaker::Cpf.cpf
    puts cpf
    assert_equal 14, cpf.to_s.length
    assert_equal true, Cpf.new(cpf).valido?
  end
  should "generate a valid cpf without mask" do
    cpf = BrFaker::Cpf.cpf false  
    assert_equal 11, cpf.to_s.length
    assert_equal true, Cpf.new(cpf).valido?
  end
end