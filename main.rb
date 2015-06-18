require("terminfo")

require_relative("lib/slide_formatter")

size = TermInfo.screen_size
formatter = SlideFormatter.new(size[1], size[0])

pretty_slide = formatter.format("You won't believe what happens next... srlsly")
puts pretty_slide
