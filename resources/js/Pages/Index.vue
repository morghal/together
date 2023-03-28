<script setup>
import Cart from '../Components/Card.vue'
import navbar from '../Components/FooterNav.vue'

</script>

<template>
    <div class="bg-gradient-to-b from-moonstone to-[#539ABB] w-auto h-auto max-w-full max-h-full">
      <!--HEADER-->
        <header class="pl-6 w-full">
            <h1 class="text-slate-50 text-4xl font-bold py-10">Together</h1>
            <div class="flex items-center">
                <div class="relative">
                    <input
                        class="pl-10 pr-4 py-2 border-0 bg-jellybeanblue rounded-2xl placeholder:text-semibold focus:ring-slate-500 placeholder:text-[#99BBC5] text-slate-50 text-medium "
                        type="text"
                        placeholder="Chercher des activités"
                    >
                    <div class="absolute inset-y-0 left-0 flex items-center pl-3  text-slate-50">
                        <svg
                        class="w-6 h-6"
                        fill="none"
                        stroke="currentColor"
                        viewBox="0 0 24 24"
                        xmlns="http://www.w3.org/2000/svg"
                        >
                        <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            stroke-width="2"
                            d="M15.5 15.5L20 20M10 17C6.68629 17 4 14.3137 4 11C4 7.68629 6.68629 5 10 5C13.3137 5 16 7.68629 16 11C16 14.3137 13.3137 17 10 17Z"
                        ></path>
                        </svg>
                    </div>
                </div>
                
                <button type="button" class="text-slate-50 pl-4"><svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8 text-slate-50" viewBox="0 0 20 20" fill="currentColor">
                    <path fill-rule="evenodd" d="M3 3a1 1 0 011-1h12a1 1 0 011 1v3a1 1 0 01-.293.707L12 11.414V15a1 1 0 01-.293.707l-2 2A1 1 0 018 17v-5.586L3.293 6.707A1 1 0 013 6V3z" clip-rule="evenodd" />
                    </svg></button>

                <button type="button" class="pl-4"><svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8 text-slate-50" viewBox="0 0 20 20" fill="currentColor">
                    <path fill-rule="evenodd" d="M12 1.586l-4 4v12.828l4-4V1.586zM3.707 3.293A1 1 0 002 4v10a1 1 0 00.293.707L6 18.414V5.586L3.707 3.293zM17.707 5.293L14 1.586v12.828l2.293 2.293A1 1 0 0018 16V6a1 1 0 00-.293-.707z" clip-rule="evenodd" />
                    </svg></button>
            </div>
        </header>
        <!--/HEADER-->

        <!--MAIN-->
        <main class="mt-8 h-auto min-h-full">
          <!--SECTION RACCOURCIS-->
            <section class="flex raccourcis w-full overflow-x-scroll">
                <div class="w-16 ml-4">
                    <img class="rounded-full" src="https://picsum.photos/200" alt="" />   
                    <div class="text-center text-slate-50 p-1">random stuff</div>
                </div>

                <div class="w-16 ml-4">
                    <img class="rounded-full" src="https://picsum.photos/200" alt="" />   
                    <div class="text-center text-slate-50 p-1">random stuff</div>
                </div>

                <div class="w-16 ml-4">
                    <img class="rounded-full" src="https://picsum.photos/200" alt="" />   
                    <div class="text-center text-slate-50 p-1">random stuff</div>
                </div>

                <div class="w-16 ml-4">
                    <img class="rounded-full" src="https://picsum.photos/200" alt="" />   
                    <div class="text-center text-slate-50 p-1">random stuff</div>
                </div>

                <div class="w-16 ml-4">
                    <img class="rounded-full" src="https://picsum.photos/200" alt="" />   
                    <div class="text-center text-slate-50 p-1">random stuff</div>
                </div>

                <div class="w-16 ml-4">
                    <img class="rounded-full" src="https://picsum.photos/200" alt="" />   
                    <div class="text-center text-slate-50 p-1">random stuff</div>
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
                    <Cart></Cart>
                    <Cart></Cart>
                    <Cart></Cart>
                    <Cart></Cart>
                    <Cart></Cart>
                    <div class="bg-slate-50/50 text-slate-800 rounded-full sticky h-1/2 mt-32 p-4 right-0"><svg fill="none" class="h-12 w-12" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                          <path stroke-linecap="round" stroke-linejoin="round" d="M11.25 4.5l7.5 7.5-7.5 7.5m-6-15l7.5 7.5-7.5 7.5"></path>
                        </svg>
                    </div>       
                </div>
            </section>

            <section class="mb-5">
              <h2 class="pl-6 text-slate-50 font-bold text-xl mb-5">Prochaines activités</h2>
              <div class="flex overflow-x-scroll pb-10 relative">
                    <Cart></Cart>
                    <Cart></Cart>
                    <Cart></Cart>
                    <Cart></Cart>
                    <Cart></Cart>
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
<style>
* {
  box-sizing: border-box; ;
}
.icone {
  stroke: #f8fafc;
  stroke-width: 2px;
  stroke-linejoin: round;
}
.overflow-x-scroll::-webkit-scrollbar {
    display: none;
  }
  section.raccourcis {
  max-height: 500px; /* use max-height instead of height */
}
</style>
