import { ref, computed } from 'vue'
import { defineStore } from 'pinia'

export const useLocationStore = defineStore('coords', () => {

  const coords = async () => {
    return new Promise((resolve, error) =>
      navigator.geolocation.getCurrentPosition((pos) => {
        let latitude = pos.coords.latitude;
        let longitude = pos.coords.longitude;
        resolve({ latitude, longitude });
      })
    );
  };

  return { coords };
})
