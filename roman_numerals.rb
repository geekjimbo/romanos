def convert(in_arabic)
  return "" if in_arabic.zero?
  arabic, roman =convert_arabic_factor(in_arabic)
  roman+convert(in_arabic - arabic)  
end

ARABIC_FACTORS = [
                  [10,"X"], 
                  [9,"IX"], 
                  [5,"V"], 
                  [4,"IV"], 
                  [1,"I"]
                 ] 

def convert_arabic_factor(in_arabic)
  ARABIC_FACTORS.find {|arabic, _| arabic <= in_arabic} 
end

