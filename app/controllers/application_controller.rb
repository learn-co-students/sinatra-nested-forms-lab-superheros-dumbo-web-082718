require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      #binding.pry
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]

      @hero_1_name= params[:member1_name]
      @hero_1_power = params[:member1_power]
      @hero_1_bio = params[:member1_bio]

      @hero_2_name= params[:member2_name]
      @hero_2_power = params[:member2_power]
      @hero_2_bio = params[:member2_bio]

      @hero_3_name= params[:member3_name]
      @hero_3_power = params[:member3_power]
      @hero_3_bio = params[:member3_bio]

      erb :team
    end

end
