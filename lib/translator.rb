require "yaml"
require 'pry'

def load_library(file_path)
  emojis = YAML.load_file(file_path)
  emojis.each do |name, values|
      emojis[name] = {:english => values[0], :japanese => values[1]}
  end
end

def get_english_meaning(file_path, emoticon)
  my_hash = load_library(file_path)
  sorry_message = "Sorry, that emoticon was not found"
  my_hash.each do |key, innerHash|
    if innerHash.has_value?(emoticon) == true
      return key
    end
  end
  return sorry_message
end


def get_japanese_emoticon(file_path, emoticon)
  my_emoticons = load_library(file_path)
  
end

