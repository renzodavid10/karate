# new feature
# Tags: optional

Feature: A description
  Background: Prueba
    Given url "https://petstore.swagger.io/v2"
    
    Scenario: Consulta Mascota 2
      Given path "pet/4"
      When method get
      Then status 200

  Scenario: Consulta Mascota 3
    Given path "pet/3"
    When method get
    Then status 200