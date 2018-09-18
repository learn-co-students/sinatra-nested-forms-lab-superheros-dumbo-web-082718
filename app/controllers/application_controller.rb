require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end
  #
  post '/team' do
    # binding.pry
    # p params
    # p params[:team][:member][0]
    @team = Team.new(params[:team][:name], params[:team][:motto])

    @member1 = Member.new({ name: params[:team][:members][0][:name], power: params[:team][:members][0][:power], biography: params[:team][:members][0][:biography] })
    @member2 = Member.new({ name: params[:team][:members][1][:name], power: params[:team][:members][1][:power], biography: params[:team][:members][1][:biography] })
    @member3 = Member.new({ name: params[:team][:members][2][:name], power: params[:team][:members][2][:power], biography: params[:team][:members][2][:biography] })
    erb :team
  end
end
