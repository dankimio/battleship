const defaultTheme = require('tailwindcss/defaultTheme')
const colors = require('tailwindcss/colors')

module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/components/**/*.rb',
    './app/components/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  safelist: [
    {
      pattern: /(col|row)-start-(1|2|3|4|5|6|7|8|9|10)/
    },
    {
      pattern: /(col|row)-span-(1|2|3|4|5)/
    },
  ],
  theme: {
    extend: {
      fontFamily: {
        'sans': ['Source Sans Pro', ...defaultTheme.fontFamily.sans],
      },
      gridColStart: {
        '8': '8',
        '9': '9',
        '10': '10',
      },
      gridRowStart: {
        '8': '8',
        '9': '9',
        '10': '10',
      }
    },
    colors: {
      transparent: 'transparent',
      current: 'currentColor',
      black: colors.black,
      white: colors.white,
      gray: {
        0: '#272727',
        1: '#696969',
        2: '#A9A9A9',
        3: '#D4D4D4',
        4: '#DEDEDE',
        5: '#EFEFEF',
        6: '#F6F6F6',
      },
      blue: {
        0: '#345BFF',
        1: '#A4B4F5',
        2: '#E5EAFF',
        3: '#EFF2FF',
      },
      red: {
        0: '#FF344C',
      }
    },
  },
  plugins: [],
}
