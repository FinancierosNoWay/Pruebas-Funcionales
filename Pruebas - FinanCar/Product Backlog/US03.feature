Feature: Gestión de crédito del automóvil

    Scenario: Visualización del estado del crédito
        Given que soy un usuario consumidor con un crédito activo para mi automóvil
        When accedo a la sección de gestión de crédito en la aplicación
        Then debería poder ver el estado actual de mi crédito, incluyendo pagos pendientes y próximos pagos

    Scenario: Realización de un pago del crédito
        Given que soy un usuario consumidor con un crédito activo para mi automóvil
        When selecciono la opción para realizar un pago del crédito
        Then debería poder completar el pago desde la aplicación y recibir una confirmación del mismo

    Scenario: Actualización de información de contacto para el crédito
        Given que soy un usuario consumidor con un crédito activo para mi automóvil
        When actualizo mi información de contacto en la sección de gestión de crédito
        Then debería ver la información actualizada reflejada en mi perfil de crédito