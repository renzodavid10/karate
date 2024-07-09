Feature: Consulting pets
  Scenario: Consulting existing pets
    Given url "https://petstore.swagger.io/v2"
    And path "pet/1"
    When method get
    Then status 200
    And print response
    And print response.name
 #Podemos hacer dos peticiones a la vez
    And path "pet/3"
    When method get
    Then status 200
    And print response
    And print response.name
     #Podemos hacer dos peticiones a la vez
    And path "pet/4"
    When method get
    Then status 200
    And print response
    And print response.name
