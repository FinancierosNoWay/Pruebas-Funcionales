Feature: Exploración y filtrado de vehículos

    Scenario: Exploración exitosa de vehículos con filtros aplicados
        Given que soy un usuario consumidor que desea explorar vehículos
        When aplico filtros de preferencia como "SUV" y un presupuesto máximo de "$20,000"
        Then debería obtener una lista de vehículos tipo SUV dentro del presupuesto de $20,000

    Scenario: Filtrado sin resultados debido a preferencias estrictas
        Given que soy un usuario consumidor buscando vehículos específicos
        When aplico filtros como "Convertible" y un presupuesto máximo de "$10,000"
        Then no debería obtener resultados que coincidan con esos criterios

    Scenario: Exploración sin filtros aplicados
        Given que soy un usuario consumidor que desea explorar vehículos
        When accedo a la sección de exploración de vehículos sin aplicar ningún filtro
        Then debería ver una lista completa de todos los vehículos disponibles en la plataforma