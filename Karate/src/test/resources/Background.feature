# new feature
# Tags: optional

Feature: Ejemplo Back
 Background: Prueba
   Given url "https://petstore.swagger.io/v2"
   Scenario: Consulta Mascota3
     Given path "pet/1"
     When method get
     Then status 200
   Scenario: Consulta Mascota4
     Given path "pet/2"
     When method get
     Then status 200


