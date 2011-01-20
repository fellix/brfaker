["array", "string"].each do |extension| require "extensions/#{extension}" end
["cpf_cnpj", "cpf", "cnpj"].each do |extension| require "brfaker/cpf_cnpj/#{extension}" end    

module BrFaker  
  def self.random_number
    %w{1 2 3 4 5 6 7 8 9 0}.rand
  end
  
  def self.gererate_numbes(quantity)
    numbers = []
    quantity.times do
      numbers << random_number
    end
    numbers
  end
  
  def self.mod11(items, range)
    n = 2
    total = 0
    for item in items          
      total += (item.to_i * n)
      n += 1
      n = 2 if n > range
    end        
    div = 11 - (total % 11)
    return 0 if div > 9
    div
  end
end