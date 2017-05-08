Feature: Google search functionality
  @smoke
  Scenario Outline: google search for dell laptops
    Given User is on google search page
    When User enters the <item_name> in the text box
    And Click on search button
    Then User should get <results> number of results
    Examples:
      | item_name   | results    |
      | dell laptops | 19,500,000 |
      #|sony laptops  | 10,000,000 |

  @Sanity
  #Declarative Style
  Scenario: Shop for Asus laptops on google
    Given User is on google search page
    When user search for the laptops and finds search result
    Then click on shop for sony laptops on google

