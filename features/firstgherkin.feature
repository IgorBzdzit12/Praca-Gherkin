Feature: Searching and purchasing a product on wina.pl

  Scenario: User searches for and buys a product
    Given the user is on the home page of wina.pl
    When the user enters the name of the wine in the search bar
    And clicks the search button
    Then the wine appears in the search results list

    When the user selects the wine from the search results
    And clicks the "Add to Cart" button
    Then the wine is displayed in the cart

    When the user goes to the cart
    And clicks the "Proceed to Checkout" button
    And fills out the payment and delivery information
    And confirms the purchase
    Then a message "Purchase completed successfully" appears
    And the user receives a purchase confirmation via email
