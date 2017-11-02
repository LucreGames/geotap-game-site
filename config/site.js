'use strict'
module.exports = {
  // Replace the image at this path with a 512x512 png
  favicon: "../src/assets/favicon.png",

  page: {
    title: "GeoTap Game | Relaxing Casual Mobile Game",
    description: "Page description",
    keywords: "Casual, Mobile Games, iOS Game, Android Game, Relaxing",
    url: "http://geotapgame.com",
  },
  
  game: {
    name: "New Game",
    description: "Game description",
    trailerUrl: "", 
    playStoreUrl: "https://play.google.com/store/apps/details?id=com.roundhouse.geotap",
    appStoreUrl: "https://itunes.apple.com/us/app/geotap-game/id1268346417?mt=8"
  },

  social: {
    image: "http://geotapgame.com/static/geotap-game-lucre-games-lowpoly-3d-casual-relaxing-mobile-game.png",
    links: [
      { icon: 'facebook', url: 'https://www.facebook.com/LucreGames/' },
      { icon: 'twitter', url: 'https://twitter.com/LucreGames/' },
    ]
  },
  
  schema: {
    genre: '["Casual", "3D",]',
  },

  gtmContainer: 'GTM-TTQ2KP3',

}
