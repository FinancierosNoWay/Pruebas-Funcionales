Feature: Registro de concesionario y perfil empresarial

    Scenario: Registro exitoso del concesionario
        Given que soy un usuario vendedor que desea registrar mi concesionario
        When completo el formulario de registro y lo envío
        Then debería recibir una confirmación de que el concesionario ha sido registrado exitosamente

    Scenario: Completar el perfil empresarial del concesionario
        Given que soy un usuario vendedor con un concesionario registrado
        When añado información sobre nuestro inventario y opciones de financiamiento en el perfil empresarial
        Then debería ver la información actualizada reflejada en mi perfil empresarial en la plataforma

    Scenario: Actualización de información del inventario
        Given que soy un usuario vendedor con un concesionario registrado
        When actualizo la información de nuestro inventario
        Then debería ver la información del inventario actualizada en nuestro perfil empresarial en la plataforma