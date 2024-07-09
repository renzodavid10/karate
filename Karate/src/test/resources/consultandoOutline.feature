# new feature
# Tags: optional
Feature: Consulting Pets1

 Scenario Outline: Consulting existing pets
    Given url "https://petstore.swagger.io/v2"
     And path "pet/<IDMASCOTA>"
     When method get
     Then status <CODIGORESPUESTA>
     And print response.name
     Examples:
     | IDMASCOTA | CODIGORESPUESTA |
     |1          | 200             |
     |2          |200              |
 Scenario Outline: Crear Mascota
   Given url "https://petstore.swagger.io/v2"
   And path "pet"
   And request
   """
   {
  "id": <IDCODIGO>,
  "category": {
    "id": 0,
    "name": "<CATEGORIA>"
  },
  "name": "<MASCOTA>",
  "photoUrls": [
    "string"
  ],
  "tags": [
    {
      "id": 0,
      "name": "string"
    }
  ],
  "status": "available"
}
   """
   And method post
   And status 200
   #Otra peticion
   And path "pet/<IDCODIGO>"
   When method get
   And status 200
   And print response
   And print response.name
   And match response.name == "<MASCOTA>"
   Examples:
    |IDCODIGO|CATEGORIA|MASCOTA|
    |1000    |perros   |negro  |
    |1001    |gatos    |gati   |
   
   

     