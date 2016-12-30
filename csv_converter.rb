require 'csv'
require 'json'

rootdir = File.expand_path("../", __FILE__)
csv_to_be_converted = rootdir + "/cards.csv"
cards_json_target = rootdir + "/cards.json"

cards_arr = CSV.read(csv_to_be_converted)

cards = cards_arr[1..cards_arr.length-1].map {|a| Hash[ cards_arr[0].zip(a) ] }

IO.write(cards_json_target, cards.to_json)
