// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/** 
 * @title Contrato Email 
 * @author Agustina
 * @notice Este contrato es parte del primer proyecto del Ethereum Developer Pack 
 * @custom:security Este es un contrato educativo y no debe ser usado en producción 
 */ 
contract Email {
    /*////////////////////////
                Variables de Estado
    ////////////////////////*/
    /// @notice variable para almacenar resultado
    string private s_resultado;
    
    /*////////////////////////
                    Eventos
    ////////////////////////*/
    /// @notice evento emitido cuando el texto es actualizado
    event Texto_actualizado(string texto);
    
    /*////////////////////////
                    Funciones
    ////////////////////////*/
    /**
     * @notice Genera un email corporativo a partir de nombre y apellido
     * @param _nombre Nombre de la persona
     * @param _apellido Apellido de la persona
     */
    function setMail(string memory _nombre, string memory _apellido) external {
        bytes memory nombre = bytes(_nombre);
        bytes memory apellido = bytes(_apellido);

        // Tomamos hasta 4 caracteres, o menos si la palabra es más corta
        bytes memory nomb = new bytes(nombre.length < 4 ? nombre.length : 4);
        for (uint i = 0; i < nomb.length; i++) {
            nomb[i] = nombre[i];
        }

        bytes memory apel = new bytes(apellido.length < 4 ? apellido.length : 4);
        for (uint i = 0; i < apel.length; i++) {
            apel[i] = apellido[i];
        }

        // Concatenar todo en un string
        s_resultado = string(abi.encodePacked(nomb, apel, "@miempresa.com"));

        emit Texto_actualizado(s_resultado);
    }

    /**
     * @notice Devuelve el email generado
     * @return mail_ Dirección de correo
     */
    function getTexto() public view returns (string memory mail_) {
        return s_resultado;
    }
}
