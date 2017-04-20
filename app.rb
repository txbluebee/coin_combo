require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combo')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/show') do
  @change = params.fetch('change').to_i().coin_combo()
  erb(:show)
end
