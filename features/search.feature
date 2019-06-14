
Feature: Search

Scenario: Search in Amazon 
Given I search "iphone case"
And Filter for "Polycarbonate"
And Order by price "Price: High to Low"
Then Check that items are ordered by price

