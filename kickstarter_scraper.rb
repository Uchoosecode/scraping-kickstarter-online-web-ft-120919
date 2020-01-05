# require libraries/modules here
require 'nokogiri'
require 'pry'


def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  
  kickstarter = Nokogiri::HTML(html) 
  
  # write your code here
binding.pry  
end



#projects = kickstarter.css("li.project.grid_4")
#titles = projects.css("h2.bbcard_name strong a").text
# image_link = projects.css("div.project-thumbnail a img").attribute("src").value 
# description = project.css("p.bbcard_blurb").text