Feature: Solicitud de financiamiento

    Scenario: Usuario intenta solicitar financiamiento sin datos previos ingresados
        Given que soy un usuario consumidor y no he ingresado los datos en el simulador de financiamiento
        When intento enviar una nueva solicitud de financiamiento
        Then debería recibir un mensaje indicando que necesito ingresar los datos de financiamiento antes de solicitar uno nuevo
        
    Scenario: Usuario con financiamiento pendiente intenta solicitar otro
        Given que soy un usuario consumidor con un financiamiento pendiente
        When intento enviar una nueva solicitud de financiamiento
        Then debería recibir un mensaje indicando que ya tengo un financiamiento pendiente y no puedo solicitar otro
