require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get "/" do

    erb :super_hero
  end

  post "/teams" do
    # @team = Team.new()

  ##create team
  # @team =  Team.new()
    @params = params

  erb :team
  end

  get "/teams" do


    erb :team
  end

# get "/team/:id" do
#   @team = Team.find(params[:id])
#
#   erb :"team/show"
# end

end
