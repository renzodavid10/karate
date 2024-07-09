Feature: Consulta De Mascota

    Scenario: Consulta de Mascota existente

        Given url "https://petstore.swagger.io/v2/pet/100"
        When method get
        Then status 200
