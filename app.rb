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

get '/teams/add/members' do
  @this_team = Team.find(params.fetch('id'))
  erb(:add_members)
end

post '/teams/add/members' do
  @this_team = Team.find(params.fetch('id'))
  @this_team.add_member(Team.new(params.fetch('new_team')))
  erb(:index)
end
