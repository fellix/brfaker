require 'helper.rb'

class TestCnpj < Test::Unit::TestCase
  should "generate a valid cnpj with mask" do
    cnpj = BrFaker::Cnpj.cnpj
    puts cnpj
    assert_equal 18, cnpj.to_s.length
    assert_equal true, Cnpj.new(cnpj).valido?
  end
  should "generate a valid cnpj without mask" do
    cnpj = BrFaker::Cnpj.cnpj false
    assert_equal 14, cnpj.to_s.length
    assert_equal true, Cnpj.new(cnpj).valido?
  end
end