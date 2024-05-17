# Vue Router v.4 Composition (API)

# Router

- [router.vuejs.org](https://router.vuejs.org/)

- Mapeo de rutas anidadas
- Enrutamiento dinámico
- Configuración de enrutador modular basada en componentes
- Parámetros de ruta, consulta, comodines.
- Vea los efectos de transición impulsados ​​por el sistema de transición de Vue.js
- Control de navegación detallado
- Enlaces con clases CSS activas automáticas
- Modo historial HTML5 o modo hash
- Comportamiento de desplazamiento personalizable
- Codificación adecuada para URL

# Instalación

```sh
npm init vue@latest
```
```sh
✔ Project name: … <your-project-name>
✔ Add TypeScript? … No
✔ Add JSX Support? … No
✔ Add Vue Router for Single Page Application development? Yes
✔ Add Pinia for state management? … No
✔ Add Vitest for Unit testing? … No
✔ Add Cypress for both Unit and End-to-End testing? … No
✔ Add ESLint for code quality? … No
✔ Add Prettier for code formatting? … No

Scaffolding project in ./<your-project-name>...
Done.
```

## main.js
```js
import { createApp } from 'vue'
import App from './App.vue'
import router from './router'

import './assets/main.css'

const app = createApp(App)

app.use(router)

app.mount('#app')
```

## router-view

- Pintará al componente dinámico que tendremos configurado en router/index.js

## router-link

- Observa cómo, en lugar de usar anclas ```<a href="#">```, usamos un componente personalizado router-link para crear enlaces. Esto permite que Vue Router cambie la URL sin recargar la página, maneje la generación de URL y su codificación.
```html
<template>
  <header>
    <img alt="Vue logo" class="logo" src="@/assets/logo.svg" width="125" height="125" />

    <div class="wrapper">
      <HelloWorld msg="You did it!" />

      <nav>
        <RouterLink to="/">Home</RouterLink>
        <RouterLink to="/about">About</RouterLink>
      </nav>
    </div>
  </header>

  <RouterView />
</template>
```

# router

- **lazy-loaded** (opens new window) dividir los componentes de cada ruta en fragmentos separados y solo cargarlos cuando se visita la ruta. En general, es una buena idea usar siempre importaciones dinámicas para todas sus rutas.

```js
import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView
    },
    {
      path: '/about',
      name: 'about',
      component: () => import('../views/AboutView.vue')
    }
  ]
})

export default router
```

# Mi primera ruta

src/views/Pokemons.vue

```vue
<script setup></script>

<template>
    <h1>Pokemons</h1>
</template>
```

router/index.js
```js
{
    path: "/pokemons",
    name: "pokemons",
    component: () => import("../views/PokemonsView.vue"),
},
```

App.vue
```vue
<nav>
    <RouterLink to="/">Home</RouterLink>
    <RouterLink to="/about">About</RouterLink>
    <RouterLink to="/pokemons">Pokemons</RouterLink>
</nav>
```

# Axios

- [Documentación de Axios](https://axios-http.com/es/docs/intro)

```sh
npm i axios
```

PokemonsView.vue

```vue
<script setup>
import axios from "axios";
import { ref } from "vue";
import { RouterLink } from "vue-router";

const pokemons = ref([]);

const getData = async () => {
    try {
        const { data } = await axios.get("https://pokeapi.co/api/v2/pokemon");
        pokemons.value = data.results;
    } catch (error) {
        console.log(error);
    }
};

getData();
</script>

<template>
    <h1>Pokemons</h1>
    <ul>
        <li v-for="poke in pokemons">
            <router-link :to="`/pokemons/${poke.name}`">{{
                poke.name
            }}</router-link>
        </li>
    </ul>
</template>

```