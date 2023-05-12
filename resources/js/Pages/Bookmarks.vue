<script setup>
    import Card from '@/Components/Card.vue';
    import FooterNav from '@/Components/FooterNav.vue';
    import TogetherLayout from '@/Layouts/AppLayout.vue';
    import Header from '../Components/Header.vue';
    import { useLocationStore } from '../stores/locationStore';
    import { useActivityStore } from '../stores/activityStore';
    import { onMounted, computed} from 'vue';
    import { Head } from '@inertiajs/vue3';

    const locationStore = useLocationStore();
    const activitiesStore = useActivityStore();
    const props = defineProps({
    activities: Array,
    });

    async function getDistance(activity) {
    const coords =  await locationStore.coords();
    activitiesStore.setDistance(coords, activity);
  }

  const nearest = computed( () => {return activitiesStore.getActivitiesSortedByDistance})

  onMounted(()=>{
    props.activities.forEach(activity => {
        getDistance(activity); 
    });
    activitiesStore.activities = props.activities;
  })

</script>
<template>
    <Head title="Favoris" />
    <TogetherLayout>
<template #default class="bg-gradient-to-b from-moonstone to-[#539ABB] relative">
        <Header :hide="false"></Header>
        <main class="mt-14 mb-6">
                <h2 class="pl-6 text-slate-50 font-bold text-xl mb-6">Activités</h2>
                <Card v-for="activity in nearest" :activity="activity" :img="'storage/img/' + activity.image" class="mb-8 w-4/6"></Card>
                <div v-if="activities.length === 0" class="bg-transparent h-screen"></div>
                <div v-else="" class="h-10 bg-transparent"></div>
        </main>
        <footer>
            <FooterNav class="fixed bottom-0"></FooterNav>
        </footer>
    </template>
</TogetherLayout>
</template>