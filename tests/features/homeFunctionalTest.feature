Feature: Abrir a página automation testing com diferentes navegadores

  Scenario Outline: Abrir a página no navegador "<Browser>"
    Dado que eu tenho o navegador "<Browser>"
    Quando eu abro  a página automation testing
    Então é exibida a página Index

    Examples:
      | Browser         |
      | Chrome          |
      | Firefox         |
      | Edge            |
      | Safari          |
