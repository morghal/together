<script setup>
    import FooterNav from '../Components/FooterNav.vue';
</script>
<template>
 <div class="container bg-slate-50">
    <header class="">
        <!--NAVIGATION-->
        <nav class="mb-12 items-center relative w-full px-4 py-4 bg-crystal flex text-slate-50">
          <ul>
            <li>
                <svg fill="none" class="opacity-100 h-6 w-6 " stroke="currentColor" stroke-width="1.5" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                <path stroke-linecap="round" stroke-linejoin="round" d="M10.5 19.5L3 12m0 0l7.5-7.5M3 12h18"></path>
                </svg>
            </li>

            <li>
                <button class="rotate-45 absolute right-4 top-3 p-2 rounded-full bg-slate-50 text-center text-slate-800 ">
                    <svg fill="none" stroke="currentColor" class="w-4 h-4" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15"></path>
                    </svg>
                </button>
            </li>
          </ul> 
        </nav>   
    </header>
    <main class="px-6">
        <form action="/patch" method="PATCH" enctype="multipart/form-data">
            <input type="file" id="image" class="hidden" name="image" accept="image/png, image/jpeg">
            
            <!--IMAGE-->
            <div class="px-2 mb-6 flex justify-center">
                <input type="file" id="image" name="image" class="hidden" accept="image/png, image/jpeg">
                <div class="relative">
                    <img class="shadow-lg rounded-full w-24 h-24 shadow-pewter-blue" src="https://randomoutputs.com/assets/images/tools/faces/pbybkdkq.webp" alt="profile picture">
                    <label for="image">
                        <div class="p-2 rounded-full bg-slate-900 absolute bottom-1 right-0">
                            <svg fill="none" class="w-4 h-4 text-slate-50" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M6.827 6.175A2.31 2.31 0 015.186 7.23c-.38.054-.757.112-1.134.175C2.999 7.58 2.25 8.507 2.25 9.574V18a2.25 2.25 0 002.25 2.25h15A2.25 2.25 0 0021.75 18V9.574c0-1.067-.75-1.994-1.802-2.169a47.865 47.865 0 00-1.134-.175 2.31 2.31 0 01-1.64-1.055l-.822-1.316a2.192 2.192 0 00-1.736-1.039 48.774 48.774 0 00-5.232 0 2.192 2.192 0 00-1.736 1.039l-.821 1.316z"></path>
                            <path stroke-linecap="round" stroke-linejoin="round" d="M16.5 12.75a4.5 4.5 0 11-9 0 4.5 4.5 0 019 0zM18.75 10.5h.008v.008h-.008V10.5z"></path>
                            </svg>
                        </div>
                    </label>
                </div>
                
            </div>
            
           <hr class="border-slate-200/50 border-1 mb-6">
           <!--PSEUDO-->
           <label for="pseudo" class="text-slate-900 font-bold text-sm">Pseudo</label>
            <div class="relative mb-8">
                <input type="text" id="pseudo" name="pseudo" class="rounded-lg bg-crystal pr-4 py-1 w-full" value="ArnaudBrugeois">
                <svg fill="none" class="w-4 h-4 absolute right-3 top-2" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
            </div>
            
            <!--CATEGORIES-->
            <fieldset class="flex flex-wrap mb-6">
                <legend class="text-slate-900 font-bold mb-4 text-sm">
                    <svg fill="none" stroke="currentColor" class="inline h-6 w-6 mr-3" stroke-width="1.5" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M9.568 3H5.25A2.25 2.25 0 003 5.25v4.318c0 .597.237 1.17.659 1.591l9.581 9.581c.699.699 1.78.872 2.607.33a18.095 18.095 0 005.223-5.223c.542-.827.369-1.908-.33-2.607L11.16 3.66A2.25 2.25 0 009.568 3z"></path>
                    <path stroke-linecap="round" stroke-linejoin="round" d="M6 6h.008v.008H6V6z"></path>
                    </svg>Categories
                </legend>
                <div class="mb-5">
                    <input type="checkbox" name="autres" id="autres" checked class="hidden peer">
                    <label for="autres" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    Autre
                    </label>
                </div>
                
                <div class="mb-5">
                    <input type="checkbox" name="randonnee" id="randonnee" class="hidden peer">
                    <label for="randonnee" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    Randonnée
                    </label>
                </div>

                <div class="mb-5">
                    <input type="checkbox" name="velo" id="velo" class="hidden peer">
                    <label for="velo" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    Vélo
                    </label>
                </div>  

                <div class="mb-5">
                    <input type="checkbox" name="moto" id="moto" class="hidden peer">
                    <label for="moto" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    Moto
                    </label>
                </div> 

                <div class="mb-5">
                    <input type="checkbox" name="peche" id="peche" class="hidden peer">
                    <label for="peche" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    Pêche
                    </label>
                </div>  

                <div class="mb-5">
                    <input type="checkbox" name="kayak" id="kayak" class="hidden peer">
                    <label for="kayak" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    Kayak
                    </label>
                </div>  

                <div class="mb-5">
                    <input type="checkbox" name="escalade" id="escalade" class="hidden peer">
                    <label for="escalade" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    Escalade
                    </label>
                </div>  

                <div class="mb-5">
                    <input type="checkbox" name="resto" id="resto" class="hidden peer">
                    <label for="resto" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    Resto
                    </label>
                </div>  

                <div class="mb-5">
                    <input type="checkbox" name="bar" id="bar" class="hidden peer">
                    <label for="bar" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    Bar
                    </label>
                </div>  

                <div class="mb-5">
                    <input type="checkbox" name="rencontre" id="rencontre" class="hidden peer">
                    <label for="rencontre" class="bg-crystal mr-2 text-slate-600 shadow-sm px-3 py-2 rounded-lg peer-checked:bg-jellybeanblue peer-checked:text-slate-50 shadow-pewter-blue">
                    Rencontre
                    </label>
                </div>  
            </fieldset>

            <!--PASSWORD-->
            <label for="pw" class="text-slate-900 font-bold text-sm">Mot de passe</label>
            <div class="relative mb-6">
                <input type="password" class="rounded-lg bg-crystal relative pr-4 py-1 w-full" id="pw" name="pw" value="password">
                  <svg fill="currentColor" class="w-4 h-4 absolute right-3 top-2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path d="M3.53 2.47a.75.75 0 00-1.06 1.06l18 18a.75.75 0 101.06-1.06l-18-18zM22.676 12.553a11.249 11.249 0 01-2.631 4.31l-3.099-3.099a5.25 5.25 0 00-6.71-6.71L7.759 4.577a11.217 11.217 0 014.242-.827c4.97 0 9.185 3.223 10.675 7.69.12.362.12.752 0 1.113z"></path>
                    <path d="M15.75 12c0 .18-.013.357-.037.53l-4.244-4.243A3.75 3.75 0 0115.75 12zM12.53 15.713l-4.243-4.244a3.75 3.75 0 004.243 4.243z"></path>
                    <path d="M6.75 12c0-.619.107-1.213.304-1.764l-3.1-3.1a11.25 11.25 0 00-2.63 4.31c-.12.362-.12.752 0 1.114 1.489 4.467 5.704 7.69 10.675 7.69 1.5 0 2.933-.294 4.242-.827l-2.477-2.477A5.25 5.25 0 016.75 12z"></path>
                    </svg>
            </div>

            <!--INTRO_TITRE DESCRIPTION-->
            <label for="intro" class="text-slate-900 font-bold text-sm">Intro</label>
            <div class="relative mb-6">
                <textarea name="intro" id="intro" cols="30" rows="3" maxlength="100" class="rounded-lg bg-crystal relative pr-10 py-1 w-full">Aimable et charismatique, je suis avant tout un grand sportif</textarea>   
                <svg fill="none" class="w-4 h-4 absolute right-3 top-2" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
            </div>

            <!--DESCRIPTION-->
            <label for="description" class="text-slate-900 font-bold text-sm">Description</label>
            <div class="relative mb-6">
                <textarea name="description" id="description" cols="30" rows="10" maxlength="250" class="rounded-lg bg-crystal relative pr-10 py-1 w-full">J'aime le vtt, les randonnées, l'escalade, boire un verre après une journée bien remplie. Mes activités sont toujours empruntes de bonne humeur et d'une bonne dose d'humour</textarea>   
                <svg fill="none" class="w-4 h-4 absolute right-3 top-2" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
            </div>

            <!--Prenom-->  
            <label for="prenom" class="text-slate-900 font-bold text-sm">Prénom</label>
            <div class="relative mb-6">
                <input type="text" class="rounded-lg bg-crystal relative pr-4 py-1 w-full" id="prenom" name="prenom" value="Arnaud" maxlength="50">
                <svg fill="none" class="w-4 h-4 absolute right-3 top-2" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
            </div>

            <!--nom-->  
            <label for="nom" class="text-slate-900 font-bold text-sm">Nom</label>
            <div class="relative mb-6">
                <input type="text" class="rounded-lg bg-crystal relative pr-4 py-1 w-full" id="nom" name="nom" value="Gregeois" maxlength="50">
                <svg fill="none" class="w-4 h-4 absolute right-3 top-2" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
            </div>

            <!--DATE_NAISSANCE-->
            <label for="dateNaissance" class="text-slate-900 font-bold text-sm">Date de naissance</label>
            <div class="relative mb-6">
                <input type="date" class="rounded-lg bg-crystal relative pr-4 py-1 w-full" id="dateNaissance" name="dateNaissance" value="2023-10-27" min="1900-01-01" max="2023-10-27">
                <svg fill="none" class="w-4 h-4 absolute right-3 top-2" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
            </div>

            <!--VILLE-->
            <label for="ville" class="text-slate-900 font-bold text-sm">Ville</label>
            <div class="relative mb-6">
                <input type="text" class="rounded-lg bg-crystal relative pr-4 py-1 w-full" id="ville" name="ville" value="Saint-Germain-de-Tallevende-la-Lande...">
                <svg fill="none" class="w-4 h-4 absolute right-3 top-2" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
            </div>

            <!--PAYS-->
            <label for="pays" class="text-slate-900 font-bold text-sm">Pays</label>
            <div class="relative mb-6">
                <input type="text" class="rounded-lg bg-crystal relative pr-4 py-1 w-full" id="pays" name="pays" value="Belgique">
                <svg fill="none" class="w-4 h-4 absolute right-3 top-2" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
            </div>
        </form>
        <hr class="border-slate-200/50 border-1 mb-6">
        <div class="text-sm font-semibold text-slate-500 mb-12" >
                    <svg fill="currentColor" class="w-4 h-4 inline mr-2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                    <path d="M12 15a3 3 0 100-6 3 3 0 000 6z"></path>
                    <path clip-rule="evenodd" fill-rule="evenodd" d="M1.323 11.447C2.811 6.976 7.028 3.75 12.001 3.75c4.97 0 9.185 3.223 10.675 7.69.12.362.12.752 0 1.113-1.487 4.471-5.705 7.697-10.677 7.697-4.97 0-9.186-3.223-10.675-7.69a1.762 1.762 0 010-1.113zM17.25 12a5.25 5.25 0 11-10.5 0 5.25 5.25 0 0110.5 0z"></path>
                    </svg>
            voir mon profil public
        </div>
    </main>
    <footer>
        <FooterNav></FooterNav>
    </footer>
    </div>
</template>
<style>
    input[type="date"]::-webkit-calendar-picker-indicator {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    width: auto;
    height: auto;
    color: transparent;
    background: transparent;
}

</style>