Feature: Pushing the contents of a directory to couchdb
  In order to get my app on couch
  As a developer
  I want to be able to push my app to couch
  
  Scenario: Pushing a directory to couch
    Given a directory named "testapp"
      And I cd to "testapp"
      And an empty file named "paul.html"
    When I run "../../../bin/couchpop popcouchtest"
    Then the output should contain "paul.html"
      And the output should contain "Success"