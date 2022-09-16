module ApplicationHelper
  def load_svg(filename)
    File.read(Rails.root.join("app", "assets", "images", filename)).html_safe
  end
end
