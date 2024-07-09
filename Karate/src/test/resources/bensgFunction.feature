# new feature
# Tags: optional

Feature: Call Function  bengs

  Scenario: Llamando funciones bengs
    Given url "https://bensg.com/test-qalab/webservice/rest/server.php"
  And param wstoken = "f50be08c81b0480df9832f1838e60cd6"
  And param wsfunction = "core_course_get_contents"
  And param moodlewsrestformat = "json"
  And param courseid = "3"
  When method GET
  Then status 200
  And print response
      