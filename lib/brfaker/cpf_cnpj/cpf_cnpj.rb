require 'brcpfcnpj'

module BrFaker
  module CpfCnpj
    CNPJ_MASK = "##.###.###/####-##"
    CPF_MASK = "###.###.###-##"
    
    protected
    def generate_number(digits, ranges=[])
      numbers = BrFaker.gererate_numbes(digits)
      ranges.each do |range|
        div = BrFaker.mod11(numbers.reverse, range)
        numbers << div
      end
      numbers.join("")
    end
  end
end