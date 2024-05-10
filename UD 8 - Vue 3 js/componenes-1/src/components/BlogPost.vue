<script setup>
import { ref } from 'vue';


//defineProps(['titulo', 'body', 'id', 'colorText']);
defineProps({
    titulo: String,
    id: Number,
    body: {
        type: String,
        default: "Sin descripción",
    }
});

const emit = defineEmits(['cambiarNombreFavorito']);

</script>

<template>
    <div class="card">
        <div class="card-body">
            <!--<h5 class="card-title" :class="`text-${colorText}`"> {{ id }} - {{ titulo }}</h5>-->
            <h5> {{ id }} - {{ titulo }}</h5>
            <p>{{ body }}</p>
            <!-- Aqui tengo que emitir ese metodo, y para ello tengo la palabra reservada emit. -->
            <button class="btn btn-outline-primary" @click="emit('cambiarNombreFavorito', titulo )">Favorito</button>
        </div>
    </div>
</template>