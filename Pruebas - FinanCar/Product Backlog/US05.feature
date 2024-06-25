Feature: Simulador de Crédito Vehicular

    Scenario: Usuario verifica DNI y accede al simulador de crédito vehicular
        Given que soy un usuario consumidor con mi DNI verificado exitosamente
        When accedo al simulador de crédito vehicular
        Then debería poder ingresar el precio del vehículo que deseo comprar

    Scenario: Usuario ingresa datos inválidos al simulador de crédito vehicular
        Given que soy un usuario consumidor con mi DNI verificado exitosamente
        When ingreso datos inválidos como el precio del vehículo, el plazo del préstamo, el porcentaje de interés o el monto del pago inicial
        Then debería recibir mensajes de error indicando qué datos son inválidos

    Scenario: Usuario visualiza diferentes opciones de plan de pagos
        Given que soy un usuario consumidor con mi DNI verificado exitosamente
        When exploro diferentes combinaciones de plazo del préstamo, porcentaje de interés y monto del pago inicial
        Then debería poder ver cómo cambian los planes de pagos mensuales
        
