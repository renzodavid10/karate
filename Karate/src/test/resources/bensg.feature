# new feature
# Tags: optional

Feature: Prueba Bens

  Scenario: Consulta mediante bens
    Given url "https://bensg.com/test-qalab/login/token.php"
  And param username = "st30001"
  And param password = "Password2!"
  And param service = "moodle_mobile_app"
    When method GET
      Then status 200
      And print response
      