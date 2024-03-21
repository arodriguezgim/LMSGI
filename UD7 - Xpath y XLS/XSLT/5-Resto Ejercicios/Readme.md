---
Ejercicio 5 - Repaso a XSLT
---

## Actividades

Realiza las siguientes actividades.

{:.activity}
### XSLT: Ciclos formativos I

Dado el siguiente documento XML, escriba las hojas de estilo XSLT que devuelvan la respuesta deseada.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<ies nombre="Campus Digital" web="https://campusdigitalfp.com/">
  <ciclos>
    <ciclo id="ASIR">
      <nombre>Administración de Sistemas Informáticos en Red</nombre>
      <grado>Superior</grado>
      <decretoTitulo año="2009" />
    </ciclo>
    <ciclo id="DAM">
      <nombre>Desarrollo de Aplicaciones Multiplataforma</nombre>
      <grado>Superior</grado>
      <decretoTitulo año="2010" />
    </ciclo>
    <ciclo id="SMR">
      <nombre>Sistemas Microinformáticos y Redes</nombre>
      <grado>Medio</grado>
      <decretoTitulo año="2008" />
    </ciclo>
  </ciclos>
</ies>
```

> No es importante si en el resultado se generan líneas en blanco a lo largo del documento.
{:.prompt-info}

#### Actividad 1-1

Sin etiquetas:

```xml
<?xml version="1.0" encoding="UTF-8"?> 
Administración de Sistemas Informáticos en Red Desarrollo de
Aplicaciones Web Sistemas Microinformáticos y Redes
```

#### Actividad 1-2

Párrafos:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<html>
  <p>Administración de Sistemas Informáticos en Red</p>
  <p>Desarrollo de Aplicaciones Multiplataforma</p>
  <p>Sistemas Microinformáticos y Redes</p>
</html>
```

#### Actividad 1-3

Lista:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<html>
  <ul>
    <li>Administración de Sistemas Informáticos en Red</li>
    <li>Desarrollo de Aplicaciones Multiplataforma</li>
    <li>Sistemas Microinformáticos y Redes</li>
  </ul>
</html>
```

#### Actividad 1-4

Tabla:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<html>
  <table border="1">
    <tr>
      <td>Administración de Sistemas Informáticos en Red</td>
    </tr>
    <tr>
      <td>Desarrollo de Aplicaciones Multiplataforma</td>
    </tr>
    <tr>
      <td>Sistemas Microinformáticos y Redes</td>
    </tr>
  </table>
</html>
```

{:.activity}
### (Voluntaria) XSLT: Ciclos formativos II

Dado el siguiente documento XML, escriba las hojas de estilo XSLT que devuelvan la respuesta deseada.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<ies nombre="Campus Digital" web="https://campusdigitalfp.com/">
  <ciclos>
    <ciclo id="ASIR">
      <nombre>Administración de Sistemas Informáticos en Red</nombre>
      <grado>Superior</grado>
      <decretoTitulo año="2009" />
    </ciclo>
    <ciclo id="DAM">
      <nombre>Desarrollo de Aplicaciones Multiplataforma</nombre>
      <grado>Superior</grado>
      <decretoTitulo año="2010" />
    </ciclo>
    <ciclo id="SMR">
      <nombre>Sistemas Microinformáticos y Redes</nombre>
      <grado>Medio</grado>
      <decretoTitulo año="2008" />
    </ciclo>
  </ciclos>
</ies>
```

#### Actividad 2-1

Párrafos:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<html>
  <h1>Campus Digital</h1>
  <p>Administración de Sistemas Informáticos en Red</p>
  <p>Desarrollo de Aplicaciones Multiplataforma</p>
  <p>Sistemas Microinformáticos y Redes</p>
</html>
```

#### Actividad 2-2

Lista:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<html>
  <h1>Campus Digital</h1>
  <p>Página web: <a href="https://campusdigitalfp.com/">https://campusdigitalfp.com/</a></p>
  <ul>
    <li>Administración de Sistemas Informáticos en Red</li>
    <li>Desarrollo de Aplicaciones Multiplataforma</li>
    <li>Sistemas Microinformáticos y Redes</li>
  </ul>
</html>
```

#### Actividad 2-3

Tabla:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<html>
  <h1>Campus Digital</h1>
  <p>Página web: <a href="https://campusdigitalfp.com/">https://campusdigitalfp.com/</a></p>
  <table border="1">
    <tr>
      <th>Nombre del ciclo</th>
      <th>Grado</th>
      <th>Año del título</th>
    </tr>
    <tr>
      <td>Administración de Sistemas Informáticos en Red</td>
      <td>Superior</td>
      <td>2009</td>
    </tr>
    <tr>
      <td>Desarrollo de Aplicaciones Multiplataforma</td>
      <td>Superior</td>
      <td>2010</td>
    </tr>
    <tr>
      <td>Sistemas Microinformáticos y Redes</td>
      <td>Medio</td>
      <td>2008</td>
    </tr>
  </table>
</html>
```

{:.activity}
### XSLT: Ciclos formativos III

Dado el siguiente documento XML, escriba las hojas de estilo XSLT que devuelvan la respuesta deseada.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<ies>
  <nombre>Campus Digital</nombre>
  <web>http://www.iesabastos.org</web>
  <ciclos>
    <ciclo id="ASIR">
      <nombre>Administración de Sistemas Informáticos en Red</nombre>
      <grado>Superior</grado>
      <decretoTitulo año="2009" />
    </ciclo>
    <ciclo id="DAM">
      <nombre>Desarrollo de Aplicaciones Multiplataforma</nombre>
      <grado>Superior</grado>
      <decretoTitulo año="2010" />
    </ciclo>
    <ciclo id="SMR">
      <nombre>Sistemas Microinformáticos y Redes</nombre>
      <grado>Medio</grado>
      <decretoTitulo año="2008" />
    </ciclo>
  </ciclos>
</ies>
```

#### Actividad 3-1

Párrafos:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<html>
  <h1>Campus Digital</h1>
  <p>Administración de Sistemas Informáticos en Red</p>
  <p>Desarrollo de Aplicaciones Multiplataforma</p>
  <p>Sistemas Microinformáticos y Redes</p>
</html>
```

#### Actividad 3-2

Lista:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<html>
  <h1>Ciclos formativos del Campus Digital</h1>
  <ul>
    <li>ASIR<br />Administración de Sistemas Informáticos en Red, Ciclo Formativo de Grado Superior
      creado en 2009</li>
    <li>DAM<br />Desarrollo de Aplicaciones Multiplataforma, Ciclo Formativo de Grado Superior creado en 2010</li>
    <li>SMR<br />Sistemas Microinformáticos y Redes, Ciclo Formativo de Grado Medio creado en 2008</li>
  </ul>
</html>
```

#### Actividad 3-3

Tabla:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<html>
  <h1>Campus Digital</h1>
  <table border="1">
    <tr>
      <th>Nombre del ciclo</th>
      <th>Grado</th>
      <th>Año del título</th>
    </tr>
    <tr>
      <td>Administración de Sistemas Informáticos en Red</td>
      <td>Superior</td>
      <td>2009</td>
    </tr>
    <tr>
      <td>Desarrollo de Aplicaciones Multiplataforma</td>
      <td>Superior</td>
      <td>2010</td>
    </tr>
    <tr>
      <td>Sistemas Microinformáticos y Redes</td>
      <td>Medio</td>
      <td>2008</td>
    </tr>
  </table>
</html>
```

{:.activity}
###  XSLT: Museos I

Dado el siguiente documento XML, escriba las hojas de estilo XSLT que devuelvan la respuesta deseada.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<museos>
  <museo>
    <nombre>Museo del Prado</nombre>
    <ciudad>Madrid</ciudad>
    <pais>España</pais>
  </museo>
  <museo>
    <nombre>British Museum</nombre>
    <ciudad>Londres</ciudad>
    <pais>Reino Unido</pais>
  </museo>
  <museo>
    <nombre>Victoria and Albert Museum</nombre>
    <ciudad>Londres</ciudad>
    <pais>Reino Unido</pais>
  </museo>
</museos>
```

#### Actividad 4-1

Convertir las etiquetas en atributos:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<museos>
  <museo nombre="Museo del Prado" ciudad="Madrid" pais="España" />
  <museo nombre="British Museum" ciudad="Londres" pais="Reino Unido" />
  <museo nombre="Victoria and Albert Museum" ciudad="Londres" pais="Reino Unido" />
</museos>
```

#### Actividad 4-2

Convertir alguna etiquetas en atributos:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<museos>
  <museo>
    <nombre>Museo del Prado</nombre>
    <ubicacion ciudad="Madrid" pais="España" />
  </museo>
  <museo>
    <nombre>British Museum</nombre>
    <ubicacion ciudad="Londres" pais="Reino Unido" />
  </museo>
  <museo>
    <nombre>Victoria and Albert Museum</nombre>
    <ubicacion ciudad="Londres" pais="Reino Unido" />
  </museo>
</museos>
```

#### Actividad 4-3

Cambiar la estructura del documento:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<ciudades>
  <ciudad>
    <nombre>Madrid</nombre>
    <pais>España</pais>
    <museo>Museo del Prado</museo>
  </ciudad>
  <ciudad>
    <nombre>Londres</nombre>
    <pais>Reino Unido</pais>
    <museo>British Museum</museo>
  </ciudad>
  <ciudad>
    <nombre>Londres</nombre>
    <pais>Reino Unido</pais>
    <museo>Victoria and Albert Museum</museo>
  </ciudad>
</ciudades>
```

#### Actividad 4-4

Cambiar la estructura del documento y algunas etiquetas en atributos:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<ciudades>
  <ciudad nombre="Madrid" pais="España">
    <museo>Museo del Prado</museo>
  </ciudad>
  <ciudad nombre="Londres" pais="Reino Unido">
    <museo>British Museum</museo>
  </ciudad>
  <ciudad nombre="Londres" pais="Reino Unido">
    <museo>Victoria and Albert Museum</museo>
  </ciudad>
</ciudades>
```

#### Actividad 4-5

Cambiar la estructura del documento y algunas etiquetas en atributos:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<paises>
  <pais nombre="España">
    <museo museo="Museo del Prado" ciudad="Madrid" />
  </pais>
  <pais nombre="Reino Unido">
    <museo museo="British Museum" ciudad="Londres" />
  </pais>
  <pais nombre="Reino Unido">
    <museo museo="Victoria and Albert Museum" ciudad="Londres" />
  </pais>
</paises>
```

{:.activity}
### XSLT: Museos II

Dado el siguiente documento XML, escriba las hojas de estilo XSLT que devuelvan la respuesta deseada.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<museos>
  <museo nombre="Museo del Prado" ciudad="Madrid" pais="España" />
  <museo nombre="British Museum" ciudad="Londres" pais="Reino Unido" />
  <museo nombre="Victoria and Albert Museum" ciudad="Londres" pais="Reino Unido" />
</museos>
```

#### Actividad 5-1

Convertir los atributos en etiquetas:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<museos>
  <museo>
    <nombre>Museo del Prado</nombre>
    <ciudad>Madrid</ciudad>
    <pais>España</pais>
  </museo>
  <museo>
    <nombre>British Museum</nombre>
    <ciudad>Londres</ciudad>
    <pais>Reino Unido</pais>
  </museo>
  <museo>
    <nombre>Victoria and Albert Museum</nombre>
    <ciudad>Londres</ciudad>
    <pais>Reino Unido</pais>
  </museo>
</museos>
```

#### Actividad 5-2

Convertir algunos atributos en etiquetas:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<museos>
  <museo ubicacion="Madrid (España)">Museo del Prado</museo>
  <museo ubicacion="Londres (Reino Unido)">British Museum</museo>
  <museo ubicacion="Londres (Reino Unido)">Victoria and Albert Museum</museo>
</museos>
```

#### Actividad 5-3

Cambiar la estructura del documento y convertir algunos atributos en etiquetas:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<ciudades>
  <ciudad nombre="Madrid">
    <pais>España</pais>
    <museo>Museo del Prado</museo>
  </ciudad>
  <ciudad nombre="Londres">
    <pais>Reino Unido</pais>
    <museo>British Museum</museo>
  </ciudad>
  <ciudad nombre="Londres">
    <pais>Reino Unido</pais>
    <museo>Victoria and Albert Museum</museo>
  </ciudad>
</ciudades>
```

#### Actividad 5-4

Cambiar la estructura del documento

```xml
<?xml version="1.0" encoding="UTF-8"?>
<paises>
  <pais nombre="España">
    <ciudad nombre="Madrid">
      <museo nombre="Museo del Prado" />
    </ciudad>
  </pais>
  <pais nombre="Reino Unido">
    <ciudad nombre="Londres">
      <museo nombre="British Museum" />
    </ciudad>
  </pais>
  <pais nombre="Reino Unido">
    <ciudad nombre="Londres">
      <museo nombre="Victoria and Albert Museum" />
    </ciudad>
  </pais>
</paises>
```

#### Actividad 5-5

Cambiar la estructura del documento

```xml
<?xml version="1.0" encoding="UTF-8"?>
<lugares>
  <lugar tipo="museo">
    <ubicacion nombre="ciudad">Madrid</ubicacion>
    <ubicacion nombre="pais">España</ubicacion>
    <nombre>Museo del Prado</nombre>
  </lugar>
  <lugar tipo="museo">
    <ubicacion nombre="ciudad">Londres</ubicacion>
    <ubicacion nombre="pais">Reino Unido</ubicacion>
    <nombre>British Museum</nombre>
  </lugar>
  <lugar tipo="museo">
    <ubicacion nombre="ciudad">Londres</ubicacion>
    <ubicacion nombre="pais">Reino Unido</ubicacion>
    <nombre>Victoria and Albert Museum</nombre>
  </lugar>
</lugares>
```

{:.activity}
###  XSLT: Artistas

Escribe una transformación XSLT que a partir de un fichero XML con datos de artistas genere una página web con una tabla con los datos de los artistas.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<artistas>
  <artista cod="a101">
    <nombreCompleto>Diego Velázquez</nombreCompleto>
    <nacimiento>1599</nacimiento>
    <fallecimiento>1660</fallecimiento>
    <pais>España</pais>
    <fichaCompleta>https://es.wikipedia.org/wiki/Diego_Vel%C3%A1zquez</fichaCompleta>
  </artista>
  <artista cod="a102">
    <nombreCompleto>Michelangelo Caravaggio</nombreCompleto>
    <nacimiento>1571</nacimiento>
    <pais>Italia</pais>
    <fichaCompleta>https://es.wikipedia.org/wiki/Caravaggio</fichaCompleta>
  </artista>
  <artista cod="a103">
    <nombreCompleto>Herrada de Landsberg</nombreCompleto>
    <nacimiento>1125</nacimiento>
    <fallecimiento>1195</fallecimiento>
    <pais>Alsacia</pais>
    <fichaCompleta>  https://es.wikipedia.org/wiki/Herrada_de_Landsberg</fichaCompleta>
  </artista>
  <artista cod="a104">
    <nombreCompleto>Francisco de Goya</nombreCompleto>
    <nacimiento>1746</nacimiento>
    <fallecimiento>1828</fallecimiento>
    <pais>España</pais>
    <fichaCompleta>https://es.wikipedia.org/wiki/Francisco_de_Goya</fichaCompleta>
  </artista>
</artistas>
```
{: file="artistasej.xml" }

Al aplicar la transformación, el resultado debe ser una página web válida. Es decir, tiene que tener todos los elementos básicos de una página web: título, codificación de caracteres, elementos, html, body y head.

Dentro del cuerpo de la página habrá una tabla, obtenida a partir de los datos del fichero artistas.xml.

- La tabla tendrá una fila por cada artista mostrado, y una primera fila como como cabecera, con los nombres: Código, Nombre, Año de nacimiento, Año de fallecimiento, País y Página web.
- Como se puede ver en el fichero, el año de fallecimiento no está disponible para todos los artistas. En ese caso, en la columna correspondiente se mostrará el texto "Desconocido".
- En la última columna, el valor se obtiene del elemento fichaCompleta. Debe mostrarse un vínculo a la dirección adecuada, con el texto "Saber más".
- Sólo se mostrarán los artistas nacidos después de 1500.
- Los artistas se mostrarán ordenados por año de nacimiento creciente. Es decir, en la primera fila, el que tenga un año de nacimiento anterior.

Para el fichero `artistasej.xml`{: .filepath} se obtendrá una página web con este aspecto:

![Aspecto tabla resultado en Chrome](tablaArtistasChrome.png)
_Aspecto tabla resultado en Chrome_

Y este código:

```html
<html>
  <head>
    <meta charset="UTF-8"/>
    <title>Tabla de artistas</title>
  </head>
  <body>
    <table>
      <tr>
        <th>Código</th>
        <th>Nombre</th>
        <th>Año de nacimiento</th>
        <th>Año de fallecimiento</th>
        <th>País</th>
        <th>Página web</th>
      </tr>
      <tr>
        <td>a102</td>
        <td>Michelangelo Caravaggio</td>
        <td>1571</td>
        <td>Desconicido</td>
        <td>Italia</td>
        <td>
          <a target="blank" href="https://es.wikipedia.org/wiki/Caravaggio">Saber más</a>
        </td>
      </tr>
      <tr>
        <td>a101</td>
        <td>Diego Velázquez</td>
        <td>1599</td>
        <td>1660</td>
        <td>España</td>
        <td>
          <a target="blank" href="https://es.wikipedia.org/wiki/Diego_Vel%C3%A1zquez">Saber más</a>
        </td>
      </tr>
      <tr>
        <td>a104</td>
        <td>Francisco de Goya</td>
        <td>1746</td>
        <td>1828</td>
        <td>España</td>
        <td>
          <a target="blank" href="https://es.wikipedia.org/wiki/Francisco_de_Goya">Saber más</a>
        </td>
      </tr>
    </table>
  </body>
</html>
```
{: file="salida_artistasej.html" }

{:.activity}

## Bibliografía

- <https://www.mclibre.org/consultar/xml/ejercicios/xslt-1.html>
- <https://www.mclibre.org/consultar/xml/ejercicios/xslt-2.html>
