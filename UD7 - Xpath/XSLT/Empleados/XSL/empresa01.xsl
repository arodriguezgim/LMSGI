<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    <xsl:output method="html" indent="yes"/>
    
    
    <xsl:template match="/">
        
        <html lang="es">
            
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                <title>
                    <xsl:value-of select="empresa/@nombre"/>
                </title>
                <link rel="stylesheet" href="../CSS/estilos.css" />
            </head>
            
            <body>
                <div class="info">Datos del primer primer empleado</div>
                <table>
                    <caption>El Corte Inglés</caption>
                    <tbody>
                        <tr>
                            <th>Nombre</th>
                            <th>Trabajo</th>
                            <th>Sueldo</th>
                        </tr>
                        <tr>
                            <td>Juan Díaz</td>
                            <td>Analista</td>
                            <td class="number">2000.00</td>
                        </tr>
                    </tbody>
                </table>
                
            </body>
            
        </html>
        
    </xsl:template>
    
    
    
</xsl:stylesheet>