<script setup>
import Card from '@/Components/Card.vue';
import navbar from '@/Components/FooterNav.vue';
import TogetherLayout from '@/Layouts/AppLayout.vue';
import Header from '../Components/Header.vue';
import { useLocationStore } from '../stores/locationStore';
import { useActivityStore } from '../stores/activityStore';
import { onServerPrefetch, computed } from 'vue';

const locationStore = useLocationStore();
const activitiesStore = useActivityStore();

const props = defineProps({
    categories: Array,
});

const nearest = computed( () => {return activitiesStore.getActivitiesSortedByDistance})
const newest = computed( () => {return activitiesStore.getActivitiesSortedByDate})
async function fetchActivities() {
  const coord = await locationStore.coords();
  activitiesStore.fetchActivities(coord, 100);
}

onServerPrefetch(
  fetchActivities()
)

</script>

<template>
    <TogetherLayout>
    <template #default>
        <div class="bg-gradient-to-b from-moonstone to-[#539ABB]">
        <Header :hide="false"></Header>
        <!--MAIN-->
        <main class="mt-8 h-auto min-h-full">
          <!--SECTION RACCOURCIS-->
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
            <!--/SECTION RACCOURCIS-->
 <!--ACTIVITES A PROXIMITE-->
            <section class="mt-14 h-auto min-h-full mb-5">
                <h2 class="pl-6 text-slate-50 font-bold text-xl mb-5">Activités à proximité</h2>
                <div class="flex overflow-x-scroll pb-10">
                    <Card v-for="activity in nearest" :activity="activity" :img="'/storage/img/' + activity.image.name"></Card>
                    <div class="bg-slate-50/50 text-slate-800 rounded-full sticky h-1/2 mt-32 p-4 right-0"><svg fill="none" class="h-12 w-12" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                          <path stroke-linecap="round" stroke-linejoin="round" d="M11.25 4.5l7.5 7.5-7.5 7.5m-6-15l7.5 7.5-7.5 7.5"></path>
                        </svg>
                    </div>       
                </div>
            </section>

            <section class="mb-5">
              <h2 class="pl-6 text-slate-50 font-bold text-xl mb-5">Prochaines activités</h2>
              <div class="flex overflow-x-scroll pb-10 relative">
                <Card v-for="activity in newest" :activity="activity" :img="'/storage/img/' + activity.image.name"></Card>
                    <div class="bg-slate-50/50 text-slate-800 rounded-full sticky h-1/2 mt-32 p-4 right-0"><svg fill="none" class="h-12 w-12" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                          <path stroke-linecap="round" stroke-linejoin="round" d="M11.25 4.5l7.5 7.5-7.5 7.5m-6-15l7.5 7.5-7.5 7.5"></path>
                        </svg>
                    </div>
                </div>
            </section>
          </main>
          <footer>
            <navbar></navbar>
          </footer>
          <!--/MAIN-->
        </div>
    </template>
    </TogetherLayout>
</template>
<style>
.overflow-x-scroll::-webkit-scrollbar {
    display: none;
  }
  section.raccourcis {
  max-height: 500px; /* use max-height instead of height */
}
</style>
