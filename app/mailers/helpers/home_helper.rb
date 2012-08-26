module HomeHelper
  
  
  def flash_display
  response = ""
  flash.each do |name, msg|
    response = response + content_tag(:div, msg, :id => "flash_#{name}")
  end
  flash.discard
  response
  end
  
  
  def convert_to_amcharts_json(data_array)
   data_array.to_json.gsub(/\"text\"/, "text").html_safe
  end
end
  
