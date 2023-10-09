Feature: Nopcommerce Registeration

  As a user
         I want to check the Register functionality of Nopcommerce

  Background: I am on Nopcommerce Registration page
    Given     I open the google chrome browser
    When      I open the URL https://demo.nopcommerce.com/register
    Then      I am on Nopcommerce Registration page

  Scenario Outline: I should not be able to register with invalid date on mandatory field (*) of registration page

    When    I enter first name "<First Name>"
    And     I enter last name  "<Last Name>"
    And     I enter email address "<Email>"
    And     I enter password "<password>"
    And     I enter confirm password "<Confirm Password>"
    And     Click on Register button
    Then    I can see an error message "Error Message>"
    And     I am not able to register

    Examples:
      | First Name | Last Name | Email             | Password | Confirm Passsword | Error Message                              |
      | ""         | bakshi    | bakshi@gmail.com  | 456897   | 456897            | Please enter First Name                    |
      | Rohan      | ""        | bakshi@gmail.com  | 456897   | 456897            | Please enter Last Name                     |
      | Rohan      | bakshi    | ""                | 456897   | 456897            | Please enter valid Email                   |
      | Rohan      | bakshi    | bakshi@gmail.com  | ""       | 456897            | Password id required                       |
      | Rohan      | bakshi    | bakshi@gmail.com  | 456897   | ""                | Confirm password is required               |
      | Rohan      | bakshi    | bakshi@gmail.comn | 456897   | 45689             | Password and confirm password do not match |
      | Rohan      | bakskhi   | bakshi@gmail.com  | 45689    | ""                | Minimum 6 character password is required   |
      | ""         | ""        | ""                | ""       | ""                | Mandatory (*) field is required            |

  Scenario: I should be able to select any one radio button from Gender Label of your Personal Details section
    Given   I am on Gender Label of your [personal Details section
    When    I select "Male" radio button
    And     I select "Female"radio button
    Then    I am able to select any on of the radio button

  Scenario Outline: I should be able to select Day, Month and Year from drop down list of Date Of Birth field
    Given   I am on Date Of Birth field of your peronal details section
    When    I Select "<Day>"
    And     I select "<Month>"
    And     I select "<Year>"
    Then    I am able to select Date, Month and Year from drop down list

    Examples:
      | Day | Month    | Year |
      | 11  | Novenber | 1989 |

  Scenario: I should be able to check and uncheck  the Newsletter box on options section
    Given   I am on Newsletter label on options section
    When    I click on Newsletter checkbox
    And     I again clock on Newsletter checkbox
    Then    I was able to check and uncheck the box next to Newsletter label

  Scenario: I should be able to register with valid mandatory (*) field data on registration page
    When    I enter First Name "Rohan"
    And     I enter Last Name "bakhi"
    And     I enter Email "bakshi@gmail.com"
    And     I enter Password "456897"
    And     I enter Confirm Password "456897"
    And     I click on Register button
    Then    I was able to register successfully
