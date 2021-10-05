Feature: Como cliente final del banco
  necesito crear una cuenta de ahorros
  con el fin de poder gestionar de forma adecuada mi dinero

  Scenario: Registro cuanta de ahorro al cliente final
    Given el cliente final requiere diligenciar el formulario
    When el cliente final registre los campos requeridos
    Then entonces podrá ingresar al home de la aplicación
  Rule: el cliente final no debe tener otro cuenta de ahorros creada y se deben ingresar todo los datos requeridos

    Scenario: Transferencias a otra cuenta de ahorros
      Given el cliente final requiere poder transferir sus dinero a otras cuentas ahorro
      When el cliente final ingrese el Monto a enviar
      And ingreso el número de cuenta
      Then del saldo se debe restar del monto
  Rule: el cliente final debe tener saldo suficiente y tener creada una cuenta y el número de cuenta de ser correcta
    Scenario:consultar saldo en cuenta de ahorros
      Given el cliente final requiere consultar su saldo
      When el cliente final se logee
      Then entonces se mostrara en el home de la página una sección con su respectivo saldo
  Rule:debe estar logeado

    Scenario: Recibir dinero de otra cuenta de ahorros
      Given Cliente final tiene un saldo en su cuenta de ahorros
      When se le envía un monto
      Then al saldo se le debe sumar el monto
  Rule: validar que la cuenta del cliente este disponible(Activa)

    Scenario: Eliminar cuenta de ahorros
      Given el cliente final posee un cuenta de ahorros
      When el cliente solicita eliminar su cuenta
      Then la cuenta debe ser eliminada de banco
  Rule:debe tener cuenta y en cliente lo solicite
