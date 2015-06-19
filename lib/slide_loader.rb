class SliderLoader
  def initialize(file_name)
    @file_name = file_name
  end

  def slides
    file_contents = IO.read(@file_name)
    slides = file_contents.split("\n----\n")

    return slides
  end
end
