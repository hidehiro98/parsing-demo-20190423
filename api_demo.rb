require 'json'
require 'open-uri'

url = 'https://api.github.com/users/dmbf29/repos'

repos_serialized = open(url).read
repos = JSON.parse(repos_serialized)

p repos[0]['name']
