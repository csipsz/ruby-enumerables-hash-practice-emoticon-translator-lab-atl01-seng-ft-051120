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
  my_hash.each do |key, value|
    binding.pry
  if emoticon == value 
    emoticon = value
  end
  puts "We do not have your emoticon in our library"
end
end


def get_japanese_emoticon(file_path, emoticon)
  my_emoticons = load_library(file_path)
end

