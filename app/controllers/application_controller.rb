require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    # RENDER form view here
    erb :super_hero
  end

  post '/teams' do

    @team_name = params[:team][:name]
    @motto = params[:team][:motto]
    @members = params[:team][:members]

    # if using classes

    # team = Team.new(@team_name, @motto)
    # hero1 = SuperHero.new(@members[0])
    # hero2 = SuperHero.new(@members[1])
    # hero3 = SuperHero.new(@members[2])
    # binding.pry
    # binding.pry

    erb :team
  end


end
