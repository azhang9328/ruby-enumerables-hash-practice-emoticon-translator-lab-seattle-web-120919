require "yaml"

def load_library(file)
  emotelibrary = YAML.load_file(file)
  orgfile = {:get_meaning => {}, :get_emoticon => {}}
  emotelibrary.each_pair do |meaning, emotearr|
    #p "#{emotearr[1]} = #{meaning}"
    orgfile[:get_meaning][emotearr[1]] = meaning
    #p "#{emotearr[0]} = #{emotearr[1]}"
    orgfile[:get_emoticon][emotearr[0]] = emotearr[1]
  end   

  orgfile
end

<<<<<<< HEAD
def get_japanese_emoticon(file, engemote)
  emotefile = load_library(file)
  p emotefile[:get_emoticon]
  if emotefile[:get_emoticon].has_key?(engemote)
    p emotefile[:get_emoticon][engemote]
  else 
    p "Sorry, that emoticon was not found"
  end 
=======
def get_japanese_emoticon(file, japemote)
  p load_library(file)
  
>>>>>>> a6cd0351ae003792b0918ee58e1eed0833b2ac30
end

def get_english_meaning(file, japemote)
   emotefile = load_library(file)
  p emotefile[:get_meaning]
  if emotefile[:get_meaning].has_key?(japemote)
    p emotefile[:get_meaning][japemote]
  else 
    p "Sorry, that emoticon was not found"
  end 
end