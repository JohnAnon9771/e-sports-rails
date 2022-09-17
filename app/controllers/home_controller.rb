class HomeController < ApplicationController
  def index
    twitch_client = Twitch::Client.new(
      client_id: Rails.application.credentials.dig(:twitch, :client_id),
      access_token: Rails.application.credentials.dig(:twitch, :access_token)
    )

    @top_games = twitch_client.get_top_games.data
  end
end