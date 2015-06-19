require("terminfo")

require_relative("lib/slide_formatter")
require_relative("lib/slide_loader")
require_relative("lib/presentation")

loader = SliderLoader.new("slides.txt")
slides = loader.slides

size = TermInfo.screen_size
formatter = SlideFormatter.new(size[1], size[0])

presentation = Presentation.new(slides, formatter)

puts presentation.current_slide

input = nil
while input != "exit"
  print "next, exit> "
  input = gets.chomp.downcase

  if input == "next"
    presentation.next!
    puts presentation.current_slide
  end
end


