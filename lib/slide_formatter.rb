class SlideFormatter
  def initialize(width, height)
    @width = width
    @height = height
  end

  def format(slide)
    pretty_slide = ""

    vertical_spacing = self.calculate_spacing(1, @height, "\n")
    pretty_slide += vertical_spacing

    horizontal_spacing = self.calculate_spacing(slide.size, @width, " ")
    pretty_slide += horizontal_spacing

    pretty_slide += slide
    pretty_slide += vertical_spacing

    return pretty_slide
  end

  def calculate_spacing(content_size, screen_size, spacer)
    spacing = (screen_size - content_size) / 2
    return spacer * spacing
  end
end
