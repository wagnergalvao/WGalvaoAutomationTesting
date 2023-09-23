Feature: Abrir a pagina automation testing com diferentes navegadores

  Scenario Outline: Abrir a pagina no navegador "<Browser>"
    Dado que eu tenho o navegador "<Browser>"
    Quando eu acesso a url "<url>"
    Então exibe a página home

    Examples:
      | Browser         |
      | Chrome          |
      | Firefox         |
      | Edge            |
      | Safari          |
