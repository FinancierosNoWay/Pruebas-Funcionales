Feature: Gestión de crédito del automóvil

    Scenario: Usuario con crédito activo realiza un pago
        Given que soy un usuario consumidor con un crédito activo para mi automóvil
        When intento realizar un pago del crédito
        Then debería recibir una confirmación de que el pago ha sido realizado correctamente
        
    Scenario: Usuario sin crédito activo intenta realizar un pago
        Given que soy un usuario consumidor sin un crédito activo para mi automóvil
        When intento realizar un pago del crédito
        Then debería recibir un mensaje indicando que no tengo un crédito activo y no puedo realizar pagos
        
    Scenario: Usuario intenta agregar un pago que excede el número de cuotas permitidas
        Given que soy un usuario consumidor con un crédito activo para mi automóvil
        And he alcanzado el número máximo de cuotas permitidas en mi financiamiento
        When intento agregar un pago adicional al crédito
        Then debería recibir un mensaje indicando que he alcanzado el límite de cuotas permitidas
