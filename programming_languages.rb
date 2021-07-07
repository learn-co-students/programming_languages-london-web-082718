require 'pry'

def reformat_languages(languages)
  new_hash = {}
languages.each do |lang_style, langs|
  langs.each do |name, value|
    #binding.pry
  if new_hash[name]
     new_hash[name][:style] << lang_style 
   else
       new_hash[name] = {}
       new_hash[name][:type] = value[:type]
       new_hash[name][:style] = [lang_style]
       #binding.pry
end
end
end
new_hash
#binding.pry
end

