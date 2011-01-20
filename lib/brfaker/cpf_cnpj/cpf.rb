require 'brcpfcnpj'

module BrFaker
  class Cpf    
    class << self
      include CpfCnpj
      
      def cpf(mask=true)
        number = generate_number(9, [10, 11])
        return number unless mask
        number.apply_mask(CPF_MASK)
      end
    end
  end
end