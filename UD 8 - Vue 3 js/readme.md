# UD 8 - Vue 3 js

## ¿Qué es Vue?

- Vue es un marco (Framework) de JavaScript para construir interfaces de usuario.
- Se basa en HTML, CSS y JavaScript estándar, y proporciona un modelo de programación declarativo y basado en componentes que lo ayuda a desarrollar interfaces de usuario de manera eficiente, ya sea simple o compleja.
- Sitio Web Oficial [Documentación de Vue](https://vuejs.org/)

## 1 - El primer proyecto en Vue

### Instalación con Vite

> Vite es un empaquetador. Un archivo .vue o un .sass no lo entiende el navegador. Hasta hace poco tiempo Webpack ha sido el empaquetador tradicional. Vite enla actualidad está rompiendo el mercado y es el más novedoso.

### Antes de crear el proyecto

- Hemos de tener instalado el Nodejs
- [node.js](https://nodejs.org/)

### Creación del proyecto

```sh
npm init vue@latest
```
- Indicamos el nombre del proyecto
```sh
✔ Project name: … <your-project-name>
✔ Add TypeScript? … No / Yes
✔ Add JSX Support? … No / Yes
✔ Add Vue Router for Single Page Application development? … No / Yes
✔ Add Pinia for state management? … No / Yes
✔ Add Vitest for Unit testing? … No / Yes
✔ Add Cypress for both Unit and End-to-End testing? … No / Yes
✔ Add ESLint for code quality? … No / Yes
✔ Add Prettier for code formatting? … No / Yes
```

Scaffolding project in ./<your-project-name>...
Done.
- Seleccionamos que NO a todo inicialmente.
```sh
cd mi-primer-vue
```
- Instalamos todas las dependencias necesarias con:
```sh
npm install
```
- Arrancamos el servidor
```sh
npm run dev
```
- Instalamos la extensión para el Visual Studio Code

    - [Extensión Oficial de Vue](https://marketplace.visualstudio.com/items?itemName=Vue.volar)


## 2 - Archivos a comentar

- vite.config.js
- readme.md
- package.json
    - Contiene el listado de dependencias y dependencias de desarrollo
- package-lock.json
- index.html
    - Toda nuestra Aplicación se renderizará en:
    ```html
    <div id="app"></div>
    ```
- La carpeta src será la carpeta donde trabajemos mayormente

## 3 - Sintaxis de plantilla

- Vue utiliza una sintaxis de plantilla basada en HTML que le permite vincular declarativamente el DOM.
- Todas las plantillas de Vue son HTML sintácticamente válidas.
- Debajo del capó, Vue compila las plantillas en un código JavaScript altamente optimizado.
- Combinado con la reactividad, Vue es capaz de calcular la cantidad mínima de componentes a renderizar y aplicar la cantidad mínima de manipulaciones en el DOM.
```vue
    <template>
        <h1>Hola Vue 3!<h1>
    </template>
```

### Interpolación de texto

- Interpolación de texto (bigote o llaves dobles) es una forma de insertar valores en una plantilla.
```vue
    <script setup>
        const name = 'Vue 3';
    </script>

    <template>
        <h1>Hola {{name}}!<h1>
    </template>
```
### Enlaces de atributos

- Las llaves dobles no se pueden insertar dentro de los atributos HTML. En su lugar utilice una v-bind para enlazar el valor de un atributo.

```vue
    <script setup>
        const name = "Vue 3";
        const styleColor = "color: red;";
    </script>

    <template>
        <h1>Hola {{ name }}!</h1>
        <h2 v-bind:style="styleColor">Hola {{ name }}</h2>
    </template>

```
Debido a que v-bind se usa con tanta frecuencia, tiene una sintaxis abreviada dedicada:
```vue
    <h2 :style="styleColor">Hola {{ name }}</h2>
```
### Uso de expresiones Javascript
- Las expresiones de JavaScript se pueden usar en las plantillas de Vue.
```vue
    <script setup>
        const name = "Vue 3";
        const styleColor = "color: red;";
        const active = true;
        const colors = ["blue", "red", "green"];
        const counter = 1;
    </script>

    <template>
        <h1>Hola {{ name }}!</h1>
        <h2 :style="styleColor">Hola {{ name.toUpperCase() }}</h2>
        <h3>{{ active ? "Estoy activado" : "Estoy desactivado" }}</h3>
        <h4 :style="`color: ${colors[2]}`">Color con interpolación</h4>
        <h5>Contador: {{ counter + 1 }}</h5>
    </template>

```
Cada enlace solo puede contener una sola expresión , lo siguiente NO funcionará:
```vue
    <p>{{if(active) {return counter}}}</p>
```

## 4 - Directivas en Vuejs

- Las directivas son atributos especiales con el prefijo v- .
- El trabajo de una directiva es aplicar actualizaciones de forma reactiva al DOM

### v-if

- La directiva v-if se usa para mostrar o ocultar un elemento de la plantilla.
```vue
    <script setup>
        const name = "Vue 3";
        const active = true;
    </script>

    <template>
        <h1>Hola {{ name }}!</h1>
        <h2 v-if="active">v-if en acción</h2>
    </template>
```
### v-else
- Un elemento v-else debe seguir inmediatamente a un v-if o un v-else-if elemento; de lo contrario, no se reconocerá.
```vue
    <script setup>
        const name = "Vue 3";
        const active = false;
    </script>

    <template>
        <h1>Hola {{ name }}!</h1>
        <h2 v-if="active">v-if en acción</h2>
        <h2 v-else>v-else en acción</h2>
    </template>
```
```vue
    <script setup>
        const name = "Vue 3";
        const active = null;
    </script>

    <template>
        <h1>Hola {{ name }}!</h1>
        <h2 v-if="active === true">Estoy en true</h2>
        <h2 v-else-if="active === false">Estoy en false</h2>
        <h2 v-else>Estoy indeciso</h2>
    </template>
```
Incorrecto:
```vue
    <template>
        <h1>Hola {{ name }}!</h1>
        <h2 v-if="active === true">Estoy en true</h2>
        <h2 v-else-if="active === false">Estoy en false</h2>
        <p>Lorem ipsum dolor sit</p>
        <h2 v-else>Estoy indeciso</h2>
    </template>
```
### v-show

- La directiva v-show se usa para mostrar o ocultar un elemento de la plantilla.
- v-show solo cambia la propiedad display CSS del elemento.
- En términos generales, v-if tiene costos de alternancia más altos mientras que v-show tiene costos de renderización inicial más altos. Así que elegiremos v-show si necesitamos cambiar algo con mucha frecuencia, y elegiremos v-if si es poco probable que la condición cambie en el tiempo de ejecución.
```vue
<script setup>
    const name = "Vue 3";
    const active = false;
</script>

<template>
    <h1>Hola {{ name }}!</h1>
    <h2 v-show="active">Estoy en true</h2>
</template>
```

### v-for

- La directiva v-for se usa para iterar sobre una lista de elementos.
- Para darle a Vue una pista para que pueda rastrear la identidad de cada nodo y, por lo tanto, reutilizar y reordenar los elementos existentes, debe proporcionar un atributo key único para cada elemento.

```vue
<script setup>
    const name = "Vue 3";
    const arrayFrutas = ["🍎", "🍌", "🍉", "🍓", "🍒"];
</script>

<template>
    <h1>Hola {{ name }}!</h1>
    <ul>
        <li v-for="(fruta, index) in arrayFrutas" :key="index">
            {{ fruta }}
        </li>
    </ul>
</template>
```

## 5 - Ejercicio Práctico

Vamos a recorrer el arrayFrutas usando como key su nombre
```vue
<script setup>
    const name = "Vue 3";
    const arrayFrutas = [
        {
            name: "Manzana",
            price: "$1.00",
            description: "Una manzana",
        },
        {
            name: "Pera",
            price: "$2.00",
            description: "Una pera",
        },
        {
            name: "Naranja",
            price: "$3.00",
            description: "Una naranja",
        },
    ];
</script>

<template>
    <h1>Hola {{ name }}!</h1>
    <!-- Realiza el ejercicio aquí-->
</template>
```