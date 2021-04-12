const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()


async function eliminarVentas(idven) {
    try {
        const venta = await prisma.ventas.delete(
            {
                where: {idventa: idven},
            }
        )
        console.log(venta)
    } catch (error) {
        console.log(error);
    }
}

async function eliminarProductos(idd) {
    try {
        const producto = await prisma.productos.delete(
            {
                where: {id: idd},
            }
        )
        console.log(producto)
    } catch (error) {
        console.log(error);
    }
}
    
async function eliminarClientes(id) {
    try {
        const cliente = await prisma.cliente.delete(
            {
                where: {id_cliente: id},
            }
        )
        console.log(cliente);
    } catch (error) {
        console.log(error);
    }
}

eliminarClientes('id4')
eliminarClientes('id3')
eliminarProductos('iD4')
eliminarProductos('iD3')
eliminarVentas('iDven5')
eliminarVentas('iDven4')