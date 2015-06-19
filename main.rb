require("terminfo")

require_relative("lib/slide_formatter")
require_relative("lib/slide_loader")

loader = SliderLoader.new("slides.txt")
slides = loader.slides

size = TermInfo.screen_size
formatter = SlideFormatter.new(size[1], size[0])

slides.each do |slide|
  puts formatter.format(slide)
end

