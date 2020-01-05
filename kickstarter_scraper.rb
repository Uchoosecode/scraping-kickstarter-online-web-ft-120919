# require libraries/modules here
require 'nokogiri'
require 'pry'


def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  
  kickstarter = Nokogiri::HTML(html) 
  
  projects = {}
  
  kickstarter.css("li.project.grid_4").each {|project| title = 
                                            projects.css("h2.bbcard_name strong a").text
                    projects[title.to_sym] = {}
  }
  projects
  
  # write your code here
# binding.pry  
end



#titles = projects.css("h2.bbcard_name strong a").text
# image_link = projects.css("div.project-thumbnail a img").attribute("src").value 
# description = projects.css("p.bbcard_blurb").text
# project_location = projects.css("ul.project-meta span.location-name").text
# percent_funded = projects.css("ul.project-stats li.first.funded strong").text.gsub("%", "").to_i
