<script setup>
    const props = defineProps({
    categories: Array,
});
</script>
<template>
    <h2 class="pl-6 text-slate-50 font-bold text-xl mb-5">Catégories</h2>
            <section class="flex raccourcis w-full overflow-x-scroll">
                <div v-for="category in categories" class="ml-4 flex w-20 flex-col items-center">
                    <img class="rounded-full w-14 h-14" :src="`/storage/img/${category.image}`" alt="" />   
                    <div class="text-center w-20 text-slate-50 text-sm p-1">{{ category.name.split(' ').slice(0,2).join(' ') }}</div>
                </div>
            
                <div class="bg-slate-50/50 text-slate-800 rounded-full sticky h-1/2 mt-3 p-2 right-0"><svg fill="none" class="h-6 w-6" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                          <path stroke-linecap="round" stroke-linejoin="round" d="M11.25 4.5l7.5 7.5-7.5 7.5m-6-15l7.5 7.5-7.5 7.5"></path>
                        </svg>
                    </div>

            </section>
</template>