<script setup>
    import Card from '@/Components/Card.vue';
    import FooterNav from '@/Components/FooterNav.vue';
    import TogetherLayout from '@/Layouts/AppLayout.vue';
    import Header from '../Components/Header.vue';
    import { useLocationStore } from '../stores/locationStore';
    import { useActivityStore } from '../stores/activityStore';

    const props = defineProps({
    activities: Array,
    });
</script>
<template>
    <TogetherLayout>
<template #default class="bg-gradient-to-b from-moonstone to-[#539ABB] relative">
        <Header :hide="false"></Header>
        <main class="mt-14 mb-6">
                <h2 class="pl-6 text-slate-50 font-bold text-xl mb-6">Activités</h2>
                <Card v-for="activity in activities" :activity="activity" :img="'storage/img/' + activity.image" class="mb-8 w-4/6"></Card>
                <div v-if="activities.length === 0" class="bg-transparent h-screen"></div>
                <div v-else="" class="h-10 bg-transparent"></div>
        </main>
        <footer>
            <FooterNav class="fixed bottom-0 md:w-[425px]"></FooterNav>
        </footer>
    </template>
</TogetherLayout>
</template>