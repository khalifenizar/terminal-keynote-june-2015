class Presentation
  def initialize(slides, formatter)
    @slides = slides
    @formatter = formatter
    @current_position = 0
  end

  def current_slide
    slide = @slides[@current_position]
    return @formatter.format(slide)
  end

  def next!
    @current_position += 1
  end
end
