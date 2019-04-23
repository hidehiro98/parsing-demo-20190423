require 'open-uri'
require 'nokogiri'

url = "https://www.amazon.com/s?k=ruby+programming"
user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36"

html_file = open(url, 'User-Agent' => user_agent).read
# p html_file

# save html_file in the challenges

html_doc = Nokogiri::HTML(html_file)
# p html_doc

html_doc.search('.a-offscreen').each do |element|
  p element.text
end
