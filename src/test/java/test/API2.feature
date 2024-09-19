Feature: To test the reqres Api

  Background: 
    Given url 'https://reqres.in/'

  Scenario: To test the reqres Endpoints
    When path '/api/users'
    And request read('data.json')
    And method POST
    And print response
    And match response contains {"name": "morpheus","job": "leader"}
    And path '/api/users?page=2'
    And method GET
    And print response
    * def datas = karate.jsonPath(response,'$.data[*]')
    And print datas.length
    And match response == read('response.json')
    And call read('API.feature')
