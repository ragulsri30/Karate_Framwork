@smoke
Feature: sample test

  Background: 
    * url baseURI
 

  Scenario: Test a c2ta
    Given path '/api/users'
    And request
      """
      {
      "name": "morpheus",
      "job": "leader"
      }
      
       
       
      """
    When method POST
    Then status 201
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    When path '/api/users?id=6'
    And method GET
    And print response
    And match $.data.id == 6
    #  And match $.data.email == 'tracey.ramos@reqres.in'
    And print responseTime
    When path '/api/usersapi/2'
    And request
      """
      {
      "createdAt": "2023-12-19T10:08:46.236Z",
      "name": "Ragul",
      "id": "6",
      "job": "Tester"
      }
      """
    When method POST
    And print response
    When path '/api/users?id=6'
    And method GET
    And print response
