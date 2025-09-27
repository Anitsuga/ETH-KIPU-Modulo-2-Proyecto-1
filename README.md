# ETH-KIPU-Modulo-2-Proyecto-1

# 👤 Email - Smart Contract

Este contrato permite generar un mail corporativo a partir del ingreso del **nombre** y **apellido** de una persona.  

---

## 🚀 Cómo clonar y ejecutar en un IDE

1. Clonar el repositorio:
   ```bash
   git clone https://github.com/Anitsuga/ETH-KIPU-Modulo-2-Proyecto-1.git
   cd Email
   ```
   
2. Abrir el archivo Email.sol en Remix IDE.

3. Compilar:

    -Seleccionar compilador Solidity 0.8.26.

    -Click en Compile Email.sol

4. Desplegar:

    -Ir a Deploy & Run.

    -Seleccionar Remix VM o Injected Provider (Metamask).

    -Click en Deploy.

## 🔍 Uso del contrato
**setMail(string memory _nombre, string memory _apellido)**: permite ingresar un nombre y un apellido. La función toma los primeros 4 caracteres del nombre y del apellido y los concatena formando el email corporativo.

**getTexto()**: devuelve el email corporativo generado.


## 🔗 Contrato en el Block Explorer
Contrato desplegado en testnet:

👉 Ver en [Sepolia Etherscan](https://sepolia.etherscan.io/address/0x942cb3CB7Cf1dAF0d33610F004928BE37d3A25b2)
