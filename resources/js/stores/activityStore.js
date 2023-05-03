import { defineStore } from 'pinia';
import { computed, ref } from 'vue';
import axios from 'axios';

export const useActivityStore = defineStore('activity', () => {
 
    const activities = ref([])
    const activity = ref([])

    const imgPath = computed( () =>  {return '/storage/img/' + activity.value.image})
    const hour = computed( () => { return new Date(activity.value.start_time).getHours()})
    const minutes = computed( () => { return new Date(activity.value.start_time).getMinutes()})

    const getActivitiesSortedByDistance = computed(() => {
      return activities.value.slice().sort((a, b) => { return a.distance - b.distance;});
    })

    const getActivitiesSortedByDate = computed(() => {
      return activities.value.slice().sort((a, b) => { return new Date(a.start_time) - new Date(b.start_time);});
    })

  function fetchActivities(position) {
    axios.get('/api/activities', {
      params: {
        latitude:position.latitude,
        longitude:position.longitude
      }
    })
    .then(response => {
      activities.value = response.data;
    })
    .catch(error => {

    });
  }

  function setDistance(position, acti) {
    axios.get('/api/distance', {
      params: {
        latitudeUser:position.latitude,
        longitudeUser:position.longitude,
        latitudeActivity:acti.latitude,
        longitudeActivity:acti.longitude
      }
    })
    .then(response => {
      return acti.distance = response.data;
    })
  }

 function photo_participant(participant) {
    return '/storage/users/' + participant.profile_photo_path
  }

 function dateTime(target) {
      const toFormat = new Date(target.start_time);
      const newDate = toFormat.toLocaleString('fr-FR', { month: 'long', day: 'numeric' });
      return newDate;
  }

  function loadActivities(activity) {
    activities.value = activity;
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
  
  return { activity, activities, imgPath, hour, minutes, setDistance, getActivitiesSortedByDate, getActivitiesSortedByDistance, fetchActivities, photo_participant, dateTime,loadActivity, loadActivities, addToBookmarks, deleteBookmark};
});