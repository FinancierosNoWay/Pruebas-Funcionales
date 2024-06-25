Feature: Verificación de DNI para crédito vehicular

    Scenario: Usuario verifica DNI exitosamente y es elegible para crédito vehicular
        Given que soy un usuario consumidor
        And he elegido un vehículo en la sección de autos
        When intento verificar mi DNI en la aplicación web
        Then debería recibir una notificación de que mi DNI ha sido verificado exitosamente

    Scenario: Usuario verifica DNI pero no es elegible para crédito vehicular
        Given que soy un usuario consumidor
        And he elegido un vehículo en la sección de autos
        When intento verificar mi DNI en la aplicación web
        Then debería recibir una notificación de que mi DNI ha sido verificado exitosamente

    Scenario: Usuario intenta verificar DNI sin haber elegido un vehículo previamente
        Given que soy un usuario consumidor
        When intento verificar mi DNI en la aplicación web sin haber elegido un vehículo
        Then no debería poder acceder a la sección de verificación de DNI

