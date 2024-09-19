Feature: To test the c2ta Api



Background:

Given url 'https://www.c2ta.co.in'

Scenario: To validate the C2TA Endpoints

* path post_Resourse

And request read ('post_Body.json')
And  method POST
And print response
And match response == read ('post_Response.json')
* path get_Resourse

And method GET



 * def datas = karate.jsonPath(response,'$.[*].author')
 
 
 * print datas.length
 * print datas
 
 And call read('API2.feature')
 
 