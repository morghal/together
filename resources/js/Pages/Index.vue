<script setup>
import Cart from '../Components/Card.vue'

</script>

<template>
    <div class="w-auto h-auto max-w-full max-h-full">
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

                <div class="bg-slate-50 opacity-50 text-slate-800 rounded-full sticky h-1/2 mt-3 p-2 right-0"><svg fill="none" class="h-6 w-6" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
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
                    <div class="bg-slate-50 opacity-50 text-slate-800 rounded-full sticky h-1/2 mt-32 p-4 right-0"><svg fill="none" class="h-12 w-12" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                          <path stroke-linecap="round" stroke-linejoin="round" d="M11.25 4.5l7.5 7.5-7.5 7.5m-6-15l7.5 7.5-7.5 7.5"></path>
                        </svg>
                    </div>       
                </div>
            </section>

            <section>
              <h2 class="pl-6 text-slate-50 font-bold text-xl mb-5">Prochaines activités</h2>
              <div class="flex overflow-x-scroll pb-10 relative">
                    <Cart></Cart>
                    <Cart></Cart>
                    <Cart></Cart>
                    <Cart></Cart>
                    <Cart></Cart>
                    <div class="bg-slate-50 opacity-50 text-slate-800 rounded-full sticky h-1/2 mt-32 p-4 right-0"><svg fill="none" class="h-12 w-12" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                          <path stroke-linecap="round" stroke-linejoin="round" d="M11.25 4.5l7.5 7.5-7.5 7.5m-6-15l7.5 7.5-7.5 7.5"></path>
                        </svg>
                    </div>
                </div>
            </section>
          </main>
          <footer>
            <nav class="w-full bg-slate-50 py-3 px-8">
              <ul class="flex text-slate-800 text-center justify-between">
                <li><a href="/home"><svg fill="none" class="h-6 w-6" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                      <path stroke-linecap="round" stroke-linejoin="round" d="M2.25 12l8.954-8.955c.44-.439 1.152-.439 1.591 0L21.75 12M4.5 9.75v10.125c0 .621.504 1.125 1.125 1.125H9.75v-4.875c0-.621.504-1.125 1.125-1.125h2.25c.621 0 1.125.504 1.125 1.125V21h4.125c.621 0 1.125-.504 1.125-1.125V9.75M8.25 21h8.25"></path>
                      </svg>
                    </a></li>

                <li><a href="/profile"><svg fill="none" class="h-6 w-6" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 6a3.75 3.75 0 11-7.5 0 3.75 3.75 0 017.5 0zM4.501 20.118a7.5 7.5 0 0114.998 0A17.933 17.933 0 0112 21.75c-2.676 0-5.216-.584-7.499-1.632z"></path>
                      </svg>
                    </a></li>

                <li><a href="/favoris"><svg fill="none" class="h-6 w-6" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M17.593 3.322c1.1.128 1.907 1.077 1.907 2.185V21L12 17.25 4.5 21V5.507c0-1.108.806-2.057 1.907-2.185a48.507 48.507 0 0111.186 0z"></path>
                      </svg>
                    </a></li>

                <li><a href="/paramètres"><svg fill="none" class="h-6 w-6" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M10.343 3.94c.09-.542.56-.94 1.11-.94h1.093c.55 0 1.02.398 1.11.94l.149.894c.07.424.384.764.78.93.398.164.855.142 1.205-.108l.737-.527a1.125 1.125 0 011.45.12l.773.774c.39.389.44 1.002.12 1.45l-.527.737c-.25.35-.272.806-.107 1.204.165.397.505.71.93.78l.893.15c.543.09.94.56.94 1.109v1.094c0 .55-.397 1.02-.94 1.11l-.893.149c-.425.07-.765.383-.93.78-.165.398-.143.854.107 1.204l.527.738c.32.447.269 1.06-.12 1.45l-.774.773a1.125 1.125 0 01-1.449.12l-.738-.527c-.35-.25-.806-.272-1.203-.107-.397.165-.71.505-.781.929l-.149.894c-.09.542-.56.94-1.11.94h-1.094c-.55 0-1.019-.398-1.11-.94l-.148-.894c-.071-.424-.384-.764-.781-.93-.398-.164-.854-.142-1.204.108l-.738.527c-.447.32-1.06.269-1.45-.12l-.773-.774a1.125 1.125 0 01-.12-1.45l.527-.737c.25-.35.273-.806.108-1.204-.165-.397-.505-.71-.93-.78l-.894-.15c-.542-.09-.94-.56-.94-1.109v-1.094c0-.55.398-1.02.94-1.11l.894-.149c.424-.07.765-.383.93-.78.165-.398.143-.854-.107-1.204l-.527-.738a1.125 1.125 0 01.12-1.45l.773-.773a1.125 1.125 0 011.45-.12l.737.527c.35.25.807.272 1.204.107.397-.165.71-.505.78-.929l.15-.894z"></path>
                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                      </svg>
                    </a></li>
              </ul>
            </nav>
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
