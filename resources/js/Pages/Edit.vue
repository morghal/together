<script setup>
    import navbar from '../Components/FooterNav.vue'
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
            <div class="px-2 mb-12 relative">
                <label for="image">
                    <div class="p-2 rounded-full bg-slate-900 absolute right-6 top-4">
                        <svg fill="none" class="w-4 h-4 text-slate-50" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M6.827 6.175A2.31 2.31 0 015.186 7.23c-.38.054-.757.112-1.134.175C2.999 7.58 2.25 8.507 2.25 9.574V18a2.25 2.25 0 002.25 2.25h15A2.25 2.25 0 0021.75 18V9.574c0-1.067-.75-1.994-1.802-2.169a47.865 47.865 0 00-1.134-.175 2.31 2.31 0 01-1.64-1.055l-.822-1.316a2.192 2.192 0 00-1.736-1.039 48.774 48.774 0 00-5.232 0 2.192 2.192 0 00-1.736 1.039l-.821 1.316z"></path>
                        <path stroke-linecap="round" stroke-linejoin="round" d="M16.5 12.75a4.5 4.5 0 11-9 0 4.5 4.5 0 019 0zM18.75 10.5h.008v.008h-.008V10.5z"></path>
                        </svg>
                    </div>
                </label>
                <img class="shadow-lg shadow-pewter-blue" src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.paysdevire-normandie-tourisme.fr%2Fwp-content%2Fuploads%2F2020%2F03%2F2-randonneepedestre-1024x686.jpg&f=1&nofb=1&ipt=9813148e396420559e89d2b48fbaafe3bc06fc575c03cf50c7b8b5c525551bec&ipo=images" alt="">
            </div>
            
           
           <!--TITRE-->
           <label for="titre" class="text-slate-900 font-bold text-sm">Titre</label>
            <div class="relative mb-6">
                <input type="text" id="titre" name="titre" class="rounded-lg bg-crystal pr-4 py-1 w-full" value="Randonnée charmante au bord d'un lac">
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

            <!--DATE_ACTIVITE-->
            <label for="dateActivite" class="text-slate-900 font-bold mb-4 text-sm">Date de l'activité</label>
            <div class="relative mb-6">
                <input type="date" class="rounded-lg bg-crystal relative pr-4 py-1 w-full" id="dateActivite" name="dateActivite" value="2023-10-27" min="2023-10-27" max="2024-10-27">
                <svg fill="none" class="w-4 h-4 absolute right-3 top-2" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
            </div>

            <!--HEURE_ACTIVITE-->
            <label for="heureActivite" class="text-slate-900 font-bold mb-4 text-sm">Heure de l'activité</label>
            <div class="relative mb-6">
                <input type="time" class="rounded-lg bg-crystal relative pr-4 py-1 w-full" id="heureActivite" name="heureActivite" value="12:13">
                <svg fill="none" class="w-4 h-4 absolute right-3 top-2" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
            </div>

            <!--DUREE_ACTIVITE-->
            <label for="dureeActivite" class="text-slate-900 font-bold mb-4 text-sm">Durée de l'activité</label>
            <div class="relative mb-6">
                <input type="time" class="rounded-lg bg-crystal relative pr-4 py-1 w-full" id="dureeActivite" name="dureeActivite" value="03:00" min="01:00" max="12:00">
                <svg fill="none" class="w-4 h-4 absolute right-3 top-2" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
            </div>

            <!--NOMBRE_PARTICIPANTS-->  
            <label for="nbrParticipants" class="text-slate-900 font-bold mb-4 text-sm">Nombre de participants</label>
            <div class="relative mb-6">
                <input type="number" class="rounded-lg bg-crystal relative pr-4 py-1 w-full" id="nbrParticipants" name="nbrParticipants" value="1" min="1" max="25">
                <svg fill="none" class="w-4 h-4 absolute right-3 top-2" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
            </div>

            <!--ADRESSE-->
            <label for="adresse" class="text-slate-900 font-bold mb-4 text-sm">Adresse</label>
            <div class="relative mb-6">
                <input type="text" class="rounded-lg bg-crystal relative px-r py-1 w-full" id="adresse" name="adresse" value="Rue de la Belle Garde, 27">
                <svg fill="none" class="w-4 h-4 absolute right-3 top-2" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
            </div>

            <!--VILLE-->
            <label for="ville" class="text-slate-900 font-bold mb-4 text-sm">Ville</label>
            <div class="relative mb-6">
                <input type="text" class="rounded-lg bg-crystal relative pr-4 py-1 w-full" id="ville" name="ville" value="Saint-Germain-de-Tallevende-la-Lande...">
                <svg fill="none" class="w-4 h-4 absolute right-3 top-2" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
            </div>

            <!--PAYS-->
            <label for="pays" class="text-slate-900 font-bold mb-4 text-sm">Pays</label>
            <div class="relative mb-6">
                <input type="text" class="rounded-lg bg-crystal relative pr-4 py-1 w-full" id="pays" name="pays" value="Belgique">
                <svg fill="none" class="w-4 h-4 absolute right-3 top-2" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
            </div>

            <!--DESCRIPTION ACTIVITE-->
            <label for="description" class="text-slate-900 font-bold mb-4 text-sm">Description de l'activité</label>
            <div class="relative mb-6">
                <textarea maxlength="250" class="rounded-lg bg-crystal relative h-52 pr-10 py-1 w-full" id="description" name="description">Cette randonnée vous fera perdre la tête ! De cours d'eau enchanteurs aux sommets ravissants, vous serez revigorés par cette balade d'un charme authentique
                </textarea>
                <svg fill="none" class="w-4 h-4 absolute right-3 top-2" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"></path>
                  </svg>
            </div>
        </form>
    </main>
    <footer>
        <navbar></navbar>
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

    input[type="time"]::-webkit-calendar-picker-indicator {
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