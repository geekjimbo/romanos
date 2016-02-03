def convert(in_arabic)
  return "" if in_arabic == 0
  arabic, roman = convert_factors(in_arabic)
  roman + convert(in_arabic - arabic)
end

ARABIC_FACTORS = [
                  [9, "IX"],
                  [5, "V"],
                  [4, "IV"],
                  [1,"I"]
                 ]

def convert_factors(in_arabic)
  ARABIC_FACTORS.find {|arabic, _| arabic <= in_arabic}
end
