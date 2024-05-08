# Componentes en Vue 3 

## script setup

- doc vue setup

- ```<script setup>``` es un azúcar sintáctico en tiempo de compilación para usar la API de composición dentro de componentes de archivo único (SFC).
- Es la sintaxis recomendada si está utilizando tanto SFC como API de composición.
Proporciona una serie de ventajas:

    - Código más breve y menos repetitivo.
    - Mejor rendimiento en tiempo de ejecución.
    - Capacidad para declarar accesorios y eventos emitidos usando TypeScript puro.

## sin script setup

```js
import { ref } from 'vue'

export default {
  // `setup` is a special hook dedicated for composition API.
  setup() {
    const count = ref(0)

    function increment() {
      count.value++
    }

    // expose the state to the template
    return {
      state,
      increment
    }
  }
}
```

## Options API (versiones de Vue anteriores)

- Con la API de opciones, usamos la opción data para declarar el estado reactivo de un componente.
- El valor de la opción debe ser una función que devuelva un objeto.
- Vue llamará a la función al crear una nueva instancia de componente y envolverá el objeto devuelto en su sistema de reactividad.
- Cualquier propiedad de nivel superior de este objeto se representa en la instancia del componente ( this en métodos y enlaces de ciclo de vida):

```js
export default {
  data() {
    return {
      count: 0
    }
  },
  methods: {
    increment() {
      this.count++
    }
  }
}
```

# Components

Los componentes nos permiten dividir la interfaz de usuario en piezas independientes y reutilizables, y pensar en cada pieza de forma aislada.

![componentes en Vue](./images/components.png)

ButtonCounter.vue

```vue
<script setup>
import { ref } from "vue";

const count = ref(0);
</script>

<template>
    <button @click="count++">You clicked me {{ count }} times.</button>
</template>
```
App.vue: Los componentes se pueden reutilizar tantas veces como quieras:
```vue
<script setup>
import ButtonCounter from './ButtonCounter.vue'
</script>

<template>
  <h1>Here is a child component!</h1>
  <ButtonCounter />
  <ButtonCounter />
  <ButtonCounter />
</template>
```
- Fíjate que al hacer clic en los botones, cada uno mantiene el suyo propio, separado count. Esto se debe a que cada vez que usa un componente, se crea una nueva instancia del mismo.
- En SFC, se recomienda usar nombres PascalCase de etiquetas para componentes secundarios para diferenciarlos de los elementos HTML nativos.
- Si está creando sus plantillas directamente en un DOM, la plantilla estará sujeta al comportamiento de análisis HTML nativo del navegador. En tales casos, deberá usar etiquetas kebab-case de cierre explícitas para los componentes:
```html
<!-- if this template is written in the DOM -->
<button-counter></button-counter>
<button-counter></button-counter>
<button-counter></button-counter>
```

## Props (defineProps)

- Los accesorios son atributos personalizados que puede registrar en un componente.
- defineProps: es una macro en tiempo de compilación que solo está disponible en el interior ```<script setup>``` y no necesita ser importada explícitamente.
- Los accesorios declarados se exponen automáticamente a la plantilla.

BlogPost.vue
```vue
<script setup>
defineProps(['title']);
</script>

<template>
  <h2>{{ title }}</h2>
</template>
```

App.vue
```html
<BlogPost title="My journey with Vue" />
<BlogPost title="Blogging with Vue" />
<BlogPost title="Why Vue is so fun" />
```
- **defineProps** también devuelve un objeto que contiene todos los accesorios pasados ​​al componente, para que podamos acceder a ellos en JavaScript si es necesario:
```js
const props = defineProps(['title'])
console.log(props.title)
```

Si no estás usando ```<script setup>```, los accesorios deben declararse usando la opción props, y el objeto props se pasará setup()como el primer argumento:

```js
export default {
  props: ['title'],
  setup(props) {
    console.log(props.title)
  }
}
```
## Props (Objeto)

- Esto no solo documenta su componente, sino que también advertirá a otros desarrolladores que usan su componente en la consola del navegador si pasan el tipo incorrecto.

```vue
<script setup>
// String, Number, Boolean, Array, Object, Date, Function, Symbol
defineProps({
  title: String,
  id: Number,
  body: {
      type: String,
      default: 'Sin descripción'
  },
});
</script>

<template>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">{{ id }} - {{ title }}</h5>
      <p>{{ body }}</p>
    </div>
  </div>
</template>
```

App.vue
```html
<BlogPost 
  title="Post 01" 
  body="Descrión del post 01"
  :id="1"
/>
<BlogPost 
  title="Post 02" 
  body="Descrión del post 02"
  :id="2"
/>
<BlogPost 
  title="Post 03" 
  body="Descrión del post 03"
  :id="3"
/>
```

## Props y v-for
```vue
<script setup>
import { ref } from "vue";

import BlogPost from "./components/BlogPost.vue";

const posts = ref([
    { id: 1, title: "Post 01", body: "Descrión del post 01" },
    { id: 2, title: "Post 02", body: "Descrión del post 02" },
    { id: 3, title: "Post 03" },
]);
</script>

<template>
    <div class="container">
        <h1>Blog</h1>
        <BlogPost
            v-for="post in posts"
            :key="post.title"
            :title="post.title"
            :id="post.id"
            :body="post.body"
            class="mb-2"
        />
    </div>
</template>
```