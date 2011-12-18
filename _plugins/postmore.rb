module PostMore
  def postmorefilter(input, url, text)
      if input.include? "<!--more-->"
         input.split("<!--more-->").first + "<p class='more'><a class='more' href='#{url}'>#{text}</a></p>"
      else
	 input
      end
	end
	end

Liquid::Template.register_filter(PostMore)
