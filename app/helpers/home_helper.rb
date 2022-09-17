module HomeHelper
  def handle_image(image)
    if image.present?
      image.gsub("{width}x{height}", "180x240")
    end
  end

  def handle_alt_image(game_name)
    if game_name.present?
      "imagem de capa do jogo #{game_name}"
    end
  end
end