# require modules here
require "yaml"
require 'pry'
emoticon = YAML.load_file('./lib/emoticons.yml')

def load_library(file_path)
  emoticon = YAML.load_file('./lib/emoticons.yml')
  new_hash={}
    emoticon.each do |words, symbols| #=> iterate over "meaning" and "symbols"
    
     symbols = {:english => symbols[0], :japanese =>symbols [1]} # => add new inner key-value pair for the value symbols
     
      h = {words => symbols} #=>create { "happy" =>{:english =>..., :japanese => ...}}
      
      new_hash.merge!(h) #merge h-hash with the new_hash, use ! for destructive merge
     end 
     
  return new_hash
end



def get_japanese_emoticon(emoticon, symbol)
  emoticon_hash = load_library("./lib/emoticons.yml")
   emoticon_hash.each do |signs, lang|
     if emoticon_hash[signs][:english] == symbol
       emoticon_hash[signs][:japanese]
      else 
        "Sorry, that emoticon was not found"
      end 
    end   
end


def get_english_meaning(emoticon, symbol)
   emoticon_hash= load_library('./lib/emoticons.yml')
  
    emoticon_hash.map do |signs, lang|
      if emoticon_hash[signs][:japanese] == symbol
      
    
      end 
   end 
end

 


 
