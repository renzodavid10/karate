# new feature
# Tags: optional

Feature: Consulta Compy

  Scenario: Consulta Tokens
    Given url "https://api.compy.pe/api/products/v2/get/6525088cf0ffaae7a3237f6e"
    And header accept = "*/*"
  And header accept-language = "es-US,es-419;q=0.9,es;q=0.8"
  And header origin = "https://compy.pe"
  And header priority = "u=1, i"
  And header referer = "https://compy.pe/"
  And header sec-fetch-dest = "empty"
  And header sec-fetch-mode = "cors"
  And header sec-fetch-site = "same-site"
  And header user-agent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
    When method get
    Then status 200
    And print response