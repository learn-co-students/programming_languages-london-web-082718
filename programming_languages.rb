require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, value|
    value.each do |language|
      # value.each creates several arrays from our original hash. Our hash does not have arrays so this
      # was unexpected.
      if new_hash[language[0]]
        new_hash[language[0]][:style] << style
      else
      new_hash[language[0]] = {language[1], :style => [style]}
      end
    end
  end
  p new_hash
end
