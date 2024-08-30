object gimenez {
    var fondo = 300000

    method fondo() {
        return fondo
    }

    method pagarSueldo(empleado) {
        fondo -= empleado.sueldo()
        empleado.cobrar()
    }

}

object galvan {
    var sueldo = 15000
    var saldo = 0

    method sueldo() {
        return sueldo
    } 

    method sueldo(_sueldo) {
        sueldo = _sueldo
    }

    method dinero() {
        return saldo.max(0)
    }

    method deuda() {
        return saldo.min(0).abs()
    }

    method cobrar() {
        saldo += sueldo
    }

    method gastar(monto) {
        saldo -= monto
    }
}

object baigorria {
    var comisionPorEmpanada = 15
    var empanadasVendidas = 0
    var totalCobrado = 0

    method sueldo() {
        return empanadasVendidas * comisionPorEmpanada
    }

    method totalCobrado() {
        return totalCobrado
    }

    method vender(cantEmpanadas) {
        empanadasVendidas += cantEmpanadas
    }

    method cobrar() {
        totalCobrado += self.sueldo()
        empanadasVendidas = 0
    }
}