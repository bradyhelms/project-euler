require 'net/http'
require 'uri'

def main
  # Set start and end problems that you want to create
  start_problem = 6
  max_problem   = 20

  (start_problem..max_problem).each do |i|
    puts "Creating file problem#{i}.rb"
    page = removeHTML(getPage(i)) 
    file = File.new("problem#{i}.rb", "w")
    file.puts(page)
    file.close
  end
end

def getPage(prob_number)
  uri = URI.parse("https://projecteuler.net/minimal=#{prob_number}")
  response = Net::HTTP.get_response(uri)
  return response.body
end

## Remove some of the HTML garbage. 
#   Not perfect, but makes everything
#   look about 1% better
def removeHTML(html_str)
  html_str.gsub!(/(<[^>]*>)|\n|\t|\$/s, "")

  # TODO add line breaks
  
  # Also add multiline comment markers for Ruby!
  return "=begin\n" + html_str + "\n=end"

end

main
