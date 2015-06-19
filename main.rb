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
while input != "exit" && input != "e"
  print "next, prev, auto, exit> "
  input = gets.chomp.downcase

  if (input == "next" || input == "n") && presentation.next?
    presentation.next!
    puts presentation.current_slide
  elsif (input == "prev" || input == "p") && presentation.previous?
    presentation.previous!
    puts presentation.current_slide
  elsif (input == "auto" || input == "a")
    while presentation.next?
      presentation.next!
      puts presentation.current_slide
      sleep(3)
    end

    break
  end
end


