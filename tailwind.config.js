module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
    extend: {
      backgroundImage: {
        'shelf-pattern': "url('bacground01.jpg')",
      },
      fontFamily: {
        bad:["'Bad Script'"],
        mplus: ["'M PLUS Rounded 1c'"]
      }
    },
    fontFamily: {
      body: [
        'Calibri',
        'Gadugi',
        'Geneva',
        'EuphemiaUCAS',
        'ヒラギノ角ゴシック',
        '"Hiragino Sans"',
        '"Yu Gothic UI"',
        'メイリオ',
        '"Hiragino Kaku Gothic ProN"',
        '"ヒラギノ角ゴ ProN W3"',
      ],
    }
  },
  daisyui: {
    themes: [
      {
        mytheme: {
          "primary": "#14b8a6",
          "secondary": "#fbbf24",
          "accent": "#fb7185",
          "neutral": "#44403c",
          "base-100": "#f5f5f4",
          "info": "#06b6d4",
          "success": "#34d399",
          "warning": "#db2777",
          "error": "#da0037",
        },
      },
    ],
  },
  plugins: [require('@tailwindcss/typography'), require("daisyui")]
}
