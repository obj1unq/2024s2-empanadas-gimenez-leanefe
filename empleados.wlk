object gimenez {
    var fondo = 300000

    method fondo() {
        return fondo
    }

    method pagarSueldo(empleado) {
        fondo -= empleado.sueldo()
        empleado.cobrar(empleado.sueldo())
    }

}

object galvan {
    var sueldo = 15000
    var dinero = 0
    var deuda = 0

    method sueldo() {
        return sueldo
    } 

    method sueldo(_sueldo) {
        sueldo = _sueldo
    }

    method dinero() {
        return dinero
    }

    method deuda() {
        return deuda
    }

    method cobrar(monto) {
        if (monto > deuda) {
            dinero += monto - deuda
            deuda = 0
        }
        else 
            deuda -= monto
    }

    method gastar(monto) {
        if (dinero < monto) {
            deuda += monto - dinero
            dinero = 0
        }
        else
            dinero -= monto
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

    method cobrar(sueldo) {
        totalCobrado += sueldo
        empanadasVendidas = 0
    }
}