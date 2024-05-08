<script setup>

//defineProps(['titulo', 'body', 'id', 'colorText']);
defineProps({
    titulo: String,
    id: Number,
    body: {
        type: String,
        default: "Sin descripción",
    }
})
</script>

<template>
    <div class="card">
        <div class="card-body">
            <!--<h5 class="card-title" :class="`text-${colorText}`"> {{ id }} - {{ titulo }}</h5>-->
            <h5> {{ id }} - {{ titulo }}</h5>
            <p>{{ body }}</p>
        </div>
    </div>
</template>