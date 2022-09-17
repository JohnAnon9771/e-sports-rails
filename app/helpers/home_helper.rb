# frozen_string_literal: true

module HomeHelper
  def handle_image(image)
    image.gsub('{width}x{height}', '400x540') if image.present?
  end

  def handle_alt_image(game_name)
    "imagem de capa do jogo #{game_name}" if game_name.present?
  end
end
