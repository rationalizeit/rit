Feature: Register
  In order to learn
  users
  want to be able to register for courses


  @wip
  Scenario: Registering for a Course
    Given a course that is "BA Training Weekday"
    When I go to the course homepage
    Then I should see the "Enroll in Course" button
    When I click on "Enroll in Course"
    Then I should see the "Course" page for the Course
