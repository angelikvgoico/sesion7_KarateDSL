Feature: Gestionar productos mediante clases java

  Background:
    * url baseURL
    * def Util = Java.type('util.Util')
    * def idAleatorio = Util.obtenerIdAleatorio()
    * def requestIdAleatorio = Util.generarRequestIdAleatorio()

  Scenario: Registrar y consultar productos utilizando clases java
    Given path pathProductos
    * header Request-ID = requestIdAleatorio
    * def reqBody = read('data/requestBody_Productos.json')
    * set reqBody.id = idAleatorio
    * set reqBody.nombre = "Lavadora 13Kl"
    * set reqBody.precio = 1700
    And request reqBody
    When method post
    Then  status 201
    And print 'Imprimiendo response', response
    And print 'Imprimiendo id ', idAleatorio
    And print 'Imprimiendo requestid', requestIdAleatorio

    * eval java.lang.Thread.sleep(1000)

    Given path pathConsultaProductos
    * param id = idAleatorio
    When method get
    Then status 200
    * print 'Imprimiendo response de la consulta ', response
