module ProfilesHelper
  
  
  def height_options 
    height = Hash.new
 
    for n in 48..84
      feet = (n/12).floor
      inches = n % 12
      height[n] = "#{feet}'#{inches}''"
    end
 
    return height.to_a.sort.map { |h| h.reverse }
  end
end
