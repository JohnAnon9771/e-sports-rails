class HomeController < ApplicationController
  def index
    twitch_client = Twitch::Client.new(
      client_id: client_id,
      client_secret: client_secret,
    )

    twitch_client.get_top_games
  end
end