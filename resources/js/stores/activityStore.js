import { defineStore } from 'pinia';
import { computed, ref } from 'vue';

export const useActivityStore = defineStore('activity', () => {
 
    const activity = ref([])

    const imgPath = computed( () =>  {return '/storage/img/' + activity.value.image})
    const hour = computed( () => { return new Date(activity.value.start_time).getHours()})
    const minutes = computed( () => { return new Date(activity.value.start_time).getMinutes()})
    const photo_path = computed( () =>{ return '/storage/users/' + activity.value.user.profile_photo_path})

 function photo_participant(participant) {
    return '/storage/users/' + participant.profile_photo_path
  }

 function dateTime(target) {
      const toFormat = new Date(target.start_time);
      const newDate = toFormat.toLocaleString('fr-FR', { month: 'long', day: 'numeric' });
      return newDate;
  }

  function loadActivity(activity) {
      activity.value = activity;
  }

  function addToBookmarks(target) {
  axios.post(`/add/${target.id}/favoris`, {
    activity:target 
  })
  .then(response => {
    target.bookmarked = true;
    console.log(response);

  })
  .catch(error => {
    console.error(error);
  });
}

function deleteBookmark(target) {
  axios.delete(`/destroy/${target.id}/favoris`, {
    activity:target 
  })
  .then(response => {
    target.bookmarked = false;
    console.log(response);

  })
  .catch(error => {
    console.error(error);
  });
}
  
  return { activity, imgPath, hour, minutes, photo_path,photo_participant, dateTime,loadActivity, addToBookmarks, deleteBookmark};
});