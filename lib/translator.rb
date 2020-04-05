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
  array = []
  my_hash.each do |key, innerHash|
   innerHash.each do |symbol, value|
    array.push(key, symbol, value)
    end
   end
   if array.include?(emoticon)
    emoticon = array[0]
  end
  return "We don't have your emoji in our database"
end


def get_japanese_emoticon(file_path, emoticon)
  my_emoticons = load_library(file_path)
end

