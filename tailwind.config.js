const defaultTheme = require('tailwindcss/defaultTheme');

/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        './vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php',
        './vendor/laravel/jetstream/**/*.blade.php',
        './storage/framework/views/*.php',
        './resources/views/**/*.blade.php',
        './resources/views/**/*.html',
        './resources/js/**/*.vue',
        './resources/js/Pages/ShowActivity.vue'
    ],

    theme: {
        extend: {
            colors: {
                'jellybeanblue': '#4B8798',
                'moonstone' :'#7ABFBE',
                'crystal' :'#B4D9D9',
                'gargoylegas': '#FDE047',
                'caribbeangreen':'#02CB8C',
                'pewter-blue': '#85ADB9',
              },
            fontFamily: {
                sans: ['Roboto', ...defaultTheme.fontFamily.sans],
            },
        },
    },

    plugins: [require('@tailwindcss/forms'), require('@tailwindcss/typography')],
};
