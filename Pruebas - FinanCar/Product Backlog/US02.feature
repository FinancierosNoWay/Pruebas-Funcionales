Feature: Solicitud de financiamiento

    Scenario: Solicitud de financiamiento exitosa
        Given que soy un usuario consumidor interesado en financiar mi compra
        When completo y envío una solicitud de financiamiento desde la aplicación
        Then debería recibir una confirmación de que mi solicitud ha sido enviada exitosamente

    Scenario: Error en la solicitud de financiamiento por información incompleta
        Given que soy un usuario consumidor intentando financiar un vehículo
        When intento enviar la solicitud sin completar todos los campos requeridos
        Then debería recibir un mensaje de error indicando que la información está incompleta

    Scenario: Visualización de opciones de financiamiento
        Given que soy un usuario consumidor interesado en financiamiento
        When accedo a la sección de financiamiento en la aplicación
        Then debería poder ver una lista de opciones de financiamiento disponibles
        
    Scenario: Usuario con financiamiento pendiente intenta solicitar otro
        Given que soy un usuario consumidor con un financiamiento pendiente
        When intento enviar una nueva solicitud de financiamiento
        Then debería recibir un mensaje indicando que ya tengo un financiamiento pendiente y no puedo solicitar otro
