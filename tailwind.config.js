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
    ],

    theme: {
        extend: {
            colors: {
                'jellybeanblue': '#4B8798',
                'moonstone' :'#7ABFBE'
              },
            fontFamily: {
                sans: ['Roboto', ...defaultTheme.fontFamily.sans],
            },
        },
    },

    plugins: [require('@tailwindcss/forms'), require('@tailwindcss/typography')],
};
