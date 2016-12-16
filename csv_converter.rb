require 'csv'
require 'json'

keys = ['card', 'category', 'question', 'caption']

cards = CSV.read("eg_cards.csv").map {|a| Hash[ keys.zip(a) ] }

IO.write("cards.json", cards.to_json)
