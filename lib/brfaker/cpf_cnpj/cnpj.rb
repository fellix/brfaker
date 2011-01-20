require 'brcpfcnpj'

module BrFaker
  class Cnpj
    class << self
      include CpfCnpj
      
      def cnpj(mask=true)                
        number = generate_number(12, [9, 9])
        return number unless mask
        number.apply_mask(CNPJ_MASK)
      end
    end
  end
end