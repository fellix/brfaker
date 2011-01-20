class String
  def apply_mask(mask)    
    count = 0
    mask.gsub(/#/) do
      str = self[count]
      count +=1
      str
    end
  end
end