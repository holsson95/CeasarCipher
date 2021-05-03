#Check if letter
def letter?(lookAhead)
    lookAhead.match?(/[[:alpha:]]/)
end
  
class String
    def is_upper?
    self == self.upcase
    end
    
    def is_lower?
    self == self.downcase
    end
  end
  
  
  def caesar_cipher(string,shift)
      alpha = Array('a'..'z')
      i = 0
      newstring = ""
      while i < string.length 
          #for letters
          if letter?(string[i]) #H
          #get index at of letter from Array 
              number = alpha.index(string[i].downcase) #11
              cipher = alpha[number-shift] #if shift 3 then cipher = 8
              newstring = newstring + cipher.upcase if string[i].is_upper? #H
              newstring = newstring + cipher if string[i].is_lower? 
          else 
              newstring = newstring + string[i]
          end 
          i+=1
      end 
  p newstring
  end 
  
  caesar_cipher("What a String!",5)
  