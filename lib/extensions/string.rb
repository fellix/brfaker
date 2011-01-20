class String
  def apply_mask(mask)        
    str = mask.gsub(/#/).each_with_index do |ch, i|
      self.each_char.entries[i]
    end    
    str
  end
end