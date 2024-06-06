Feature: Interacción con clientes

    Scenario: Respuesta rápida a la consulta de un cliente
        Given que soy un usuario vendedor interactuando con un cliente
        When recibo una consulta sobre un vehículo específico
        Then debería poder enviar una respuesta rápida y personalizada al cliente

    Scenario: Manejo de múltiples consultas simultáneas
        Given que soy un usuario vendedor con varias consultas de clientes
        When gestiono múltiples interacciones a través de la aplicación
        Then debería poder mantener un seguimiento y responder a cada consulta de manera efectiva

