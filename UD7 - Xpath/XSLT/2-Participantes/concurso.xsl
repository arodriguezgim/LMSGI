<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                         version="1.0">

    <xsl:output method="html" indent="yes"/>
    <!--<xsl:mode name="mode-name" streamable="false" on-no-match="shallow-copy" visibility="public"/>-->

    <xsl:template match="/">
        <!--Aqui dentro vamos a poner la plantilla en html-->
        <html lang="es">
            <head>
                <meta charset="UTF-8" />
                <title>Participantes</title>
                <link rel="stylesheet" href="estilos.css" />
            </head>
            <body>
                <div class="header">
                    <h1>Información del concurso</h1>
                </div>

                <main>
                    <h2>Listado de Participantes</h2>
                    <ol class="participantes">
                        <xsl:for-each select="//participante">      
                        <!-- Lista de participantes-->
                            <li> <xsl:value-of select="apellidos"/> <xsl:text> , </xsl:text> <xsl:value-of select="nombre"/> <xsl:text>. (</xsl:text>código) - X puntos</li>
                        </xsl:for-each>
                    </ol>

                    <h2>5 - Mejores participantes con más de 20 puntos</h2>
                    <table class="participantes-t ancho">
                        <thead>
                            <tr>
                                <th>Posición</th>
                                <th>Participante</th>
                                <th>Puntos</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Tabla de participantes-->
                            <tr>
                                <td>1</td>
                                <td>Apellidos, nombre</td>
                                <td>10</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Apellidos, nombre</td>
                                <td>20</td>
                            </tr>
                        </tbody>
                    </table>
                </main>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>