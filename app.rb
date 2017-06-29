require "sinatra"
require "sinatra/reloader"
also_reload('lib/**/*.rb')
require "./lib/ping_pong.rb"
 get('/') do
   erb(:index)
 end
 get('/ping_pong')do
   @ping_pong_array = params.fetch('number').to_i.ping_pong()
   erb(:ping_pong)
 end
