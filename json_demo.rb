require 'json'

# TODO - let's read/write data from beers.json
filepath    = 'data/beers.json'

serialized_beers = File.read(filepath)
# p serialized_beers

# Desirializing string (Coverting the big strig to the ruby object)
# beer_hash is a ruby Hash
beer_hash = JSON.parse(serialized_beers)
# p beer_hash['title']

origin_array = []
beer_hash['beers'].each do |beer|
  origin_array << beer['origin']
end
# p origin_array.uniq.sort


# From here, storing JSON
beers = { beers: [
  {
    name:       'Edelweiss',
    appearance: 'White',
    origin:     'Austria'
  },
  {
    name:       'Gambrinus',
    appearance: 'Pale',
    origin:     'Czechia'
  },
  {
    name: 'Hard Core IPA',
    appearance: 'IPA',
    origin: 'Scotland'
  }
  # etc...
]}

# Serializing the ruby object to the string (Converting the ruby object to the big string)
p JSON.generate(beers).class

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(beers))
end
