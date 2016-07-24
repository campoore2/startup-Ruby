require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/member'
require './lib/team'

get('/') do
  erb(:index)
end

get '/teams' do
  @team_list = Team.all()
  erb(:teams)
end

post '/teams/add' do
  @team_name = params.fetch('team_name')
  Team.new(@team_name).save()
  @team_list = Team.all()
  redirect('/teams')
end
