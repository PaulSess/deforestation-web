module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ]
}

/** @type {import('tailwindcss').Config} */
module.exports = {
  mode: 'Jit',
  purge: ['./src/**/*.{js,jsx,ts,tsx}', './public/index.html'],
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*',
  ],
  theme: {
    extend: {
      colors: {
        GREEN: '#A2CBB3',
        DARKERGREEN: '#9EBBAA',
        BEIGE: '#F9F0E1',
      }
    },
  },
  plugins: [],
}
