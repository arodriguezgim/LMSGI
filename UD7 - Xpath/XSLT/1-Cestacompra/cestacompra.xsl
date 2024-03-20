<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="3.0">
    <!-- En el template colocamos las reglas que se aplican a los nodos que se llegan a encontrar.
    match es usado para asociar el template con un elemento xml  
    Si usamos / significará que es todo el documento.
    El atributo name es opcional y representa al nombre del template.
    El atributo mode es opcional y permite a los elementos ser procesados para producir diferentes
    resultados.
    priority es opcional e indica la prioridad que tendrá el template
    -->
<<<<<<< HEAD:UD7 - Xpath/XSLT/1-Cestacompra/cestacompra.xsl
    <xsl:template match="/" >
=======
    <xsl:template match="/*">
>>>>>>> 7a786937301e479462f464a4007adef6d5a780f6:UD7 - Xpath/XSLT/cestacompra.xsl
        <!-- Aquí creamos el documento HTML -->
        <html lang="es">
            <head>
                <title>Document</title>
            </head>
            <body>
                <h1>Cesta dela compra</h1>
                <!-- Aqui creamos una tabla para contener los datos -->
                <table border="1">
                    <tr bgcolor="#a0a0ff">
                        <th>ID Producto</th>
                        <th>Nombre del producto</th>
                        <th>Origen</th>
                        <th>Cantidad (Kg)</th>
                        <th>Precio Total</th>
                    </tr>

                    <!-- Tenemos un iterador for-each que recorrerá Cantidad
                    elemento producto dentro de Cesta
                    select determina el conjunto de nodos a ser iterados-->
                    <xsl:for-each select="cesta/producto">
                        <tr>
                            <td>
                                <!-- Obtenemos los valores del nodo seleccionado y los colocamos en
                                su casilla.
                            En este ejemplo los colocamos dentro de td
                            Con select indicamos cual es el nodo o atributo a obtener -->
                                <xsl:value-of select="@idproducto" />
                            </td>
                            <td>
                                <xsl:value-of select="nombre" />
                            </td>
                            <td>
                                <xsl:value-of select="origen" />
                            </td>
                            <td>
                                <xsl:value-of select="cantidad" />
                            </td>
                            <td>
                                <xsl:value-of select="coste" /> € </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>


</xsl:stylesheet>