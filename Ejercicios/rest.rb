require 'json'
require 'rest-client'
require 'byebug'

#byebug
response = RestClient.get "https://www.rijksmuseum.nl/api/nl/collection?q=Q&key=fpGQTuED&format=json"

# imprimir el body (que es un String)
#puts response.body

# Luego para trabajar la información es conveniente convertirlo en un Hash que sería parsear el json
puts JSON.parse(response.body)