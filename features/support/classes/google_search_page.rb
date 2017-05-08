class GoogleSearchPage
  include PageObject
  include RSpec::Matchers

  page_url "www.google.com"

  text_field(:search_box,:id => 'lst-ib')
  button(:search,:id => '_fZl')
  div(:actual_result,:id => 'resultStats')

  def Search_text searchTextValue
    self.search_box_element.send_keys searchTextValue
  end

def comparing_result search_result
  #way of writing fail contditions

  #1. Using If condition
  #actual_result_element.text.include?(search_result).should == true
  # if actual_result_element.text.include?(search_result)
  #   p "test case passed"
  #   p "expected_result: " + search_result
  #   p "actual_result: " + actual_result_element.text
  # else
  #   fail "test case failed"
  #   p "expected result: " + search_result
  #   p "actual_result: " + actual_result_element.text
  # end

  #2 using FAIL method
  #fail " Failed, acutal result - #{actual_result_element.text} not matched with exepcted result -#{search_result} " unless actual_result_element.text.include?(search_result)

  #3 using RSPEC
  #actual_result_element.text.should eq(search_result)
  expect(actual_result_element.text).should eq(search_result)
end

end