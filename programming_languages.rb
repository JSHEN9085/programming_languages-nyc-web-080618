# def reformat_languages(languages)
#   # your code here
# end

# def reformat_languages(languages)
# new_hash = Hash.new
#   hash.each do |type, language|
#   language.each do |name, info|
#     new_hash[name] = info
#   if hash[:oo].has_key?(name)
#     new_hash[name][:style] = []
#     new_hash[name][:style].push(:oo)
#     end
#   if hash[:interpreted].has_key?(name)
#     new_hash[name][:style].push(:interpreted)
#     end
# end
# end
# puts new_hash
# end

 def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, lang_hash|
    lang_hash.each do |lang, type_hash|
      type_hash.each do |sym, str|
        if new_hash.include?(lang)
          new_hash[lang][:style] << style
        else
          new_hash[lang] = {:type => str, :style => [style]}
        end
      end
    end
  end
  new_hash
 end