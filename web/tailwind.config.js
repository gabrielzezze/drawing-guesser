module.exports = {
  purge: ['./src/**/*.{js,jsx,ts,tsx}', './public/index.html'],
  darkMode: false, // or 'media' or 'class'
  theme: {
    colors: {
      lightBlack: '#313131',
      white: '#ffffff'
    },
    fontFamily: {
      'body': ['Montserrat']
    },
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
