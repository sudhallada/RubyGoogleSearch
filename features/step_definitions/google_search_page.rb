Given(/^User is on google search page$/) do
  visit GoogleSearchPage
end

When(/^User enters the (.*) in the text box$/) do |item_name|
  on(GoogleSearchPage).Search_text item_name

end

And(/^Click on search button$/) do
  on(GoogleSearchPage).search_element.click
end


Then(/^User should get (.*) number of results$/) do |results|
  on(GoogleSearchPage).comparing_result results
  sleep 5
end


When(/^user search for the laptops and finds search result$/) do
    on(GoogleSearchPage).Search_text 'Asus'
end

Then(/^click on shop for sony laptops on google$/) do
  on(GoogleSearchPage).search_element.click
end