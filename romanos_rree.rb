def convert(in_arabic)
  return "" if in_arabic == 0 
  arabigo, romano = convert_factor(in_arabic)
  romano + convert(in_arabic - arabigo)
end

ARABIGOS = [
            [9, "IX"],
            [5, "V"],
            [4, "IV"],
            [1, "I"]
           ]

def convert_factor(in_arabic)
  ARABIGOS.find{|arabigo, _| arabigo <= in_arabic}
end
