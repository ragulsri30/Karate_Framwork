Feature: To validate the compined API 

Scenario Outline: To Validate the different endpoints

Given url 'https://www.c2ta.co.in'

When path '/api/insert.php'

And request 

"""
{
"title": "Project Manager" ,
"body": "selenium",
"author": "joshi"
}
"""

And method POST

And print response

And path '/api/read.php?id='+id

And method GET


And print response

And karate.write(response,'src/test/java/Response'+id+'.json')
Examples:
|id|
|1000|
|1002|
|1003|


