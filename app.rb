require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/score') do
  @word = params.fetch('score')
  @score = params.fetch('score').scrabble()
  erb(:score)
end
