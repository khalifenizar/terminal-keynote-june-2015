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
    if self.next?
      @current_position += 1
    end
  end

  def previous!
    if self.previous?
      @current_position -= 1
    end
  end

  def next?
    return @current_position < @slides.size - 1
  end

  def previous?
    return @current_position > 0
  end
end
