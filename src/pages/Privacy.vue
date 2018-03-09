<template lang="pug">
.page.presskit-page
  
  router-link(to="/" data-gtm="Presskit > Click" data-gtm-value="GeoTap Logo") 
    geotap-logo(heading="h1")
  h2 Privacy Policy

  text-content 

    strong Overview:
    p Thank you for your interest in GeoTap by Lucre Games! Here's what you need to know about your data while using this software: GeoTap does not track identifying personal information, but we do use system and gameplay analytics to learn about how our users experience the game. We also save an anonymous user profile for each device running the game. This is used to track advertising and analytics events. Lucre Games does not share any user data it collects from GeoTap with outside parties, except implicilty with Unity Technologies and Google  and Apple platforms that distribute the software. The game is created with Unity software, which does its own tracking explained below.   

    strong Software:
    p Unity has probably collected some or all of the following information about your device: unique device identifiers (e.g., IDFV for iOS devices and Android ID for Android devices) ); IP address; country of install (mapped from IP address); device manufacturer and model platform type (iOS, Android, Mac, Windows, etc.) and the operating system and version running on your system or device; language; CPU information such as model, the number of CPUs present, frequency, and instruction set support flags; the graphics card type and vendor name; graphics card driver name and version (example: "nv4disp.dll 6.10.93.71"); which graphics API is in use (example: "OpenGL 2.1" or "Direct3D 9.0c"); amount of system and video RAM present; current screen resolution; version of the Unity Editor used to create the  game; sensor flags (e.g., device support for gyroscope, touch pressure or accelerometer); application or bundle identification ("app ID") of the game installed; unique advertising identifiers provided for iOS and Android devices (e.g., IDFA or Android Ad ID); and a checksum of all the data that gets sent to verify that it did transmit correctly. 

    strong Analytics:
    p Unity has collected device information, like IP address and device identifiers, as well as events completed or actions taken within the game, including level, number of credits, time it took you to earn them, metadata about in-game communications and the value and details of purchases. Using our systems, the developer of the game has ongoing access to this data. Other Unity customers may have access to aggregated reports about game activity in general across a number of games. These reports are based, in part, on your game activities, but do not specifically identify you or your device. 

    strong Ads:
    p Unity Ads has probably collected device information, like IP address and device identifiers,and information regarding the delivery of ads and your interaction with them, all of which may be shared with ad publishers and attribution companies. Unity Ads may also incorporate data derived from the Unity Analytics service in user profiles and use that profile data in order to provide personalized advertising. When Unity provides personalized advertising, it will provide you notice and information about how to opt-out of such interest based advertising. 

    strong Game Services: 
    p GeoTap uses Google Play Games Services for Android devices and Game Center services for iOS devices to host leaderboards and achievements. You have the option to play GeoTap without these services, but the related features will not be accessible. GeoTap does not store any information about your account with these services. 

  lucre-footer 

  .gradient-area

</template>

<script lang="coffee">
metaMixin = require '@/mixins/meta'

import GeotapLogo from '@/components/GeotapLogo'
import Footer from '@/components/Footer'

export default {
  name: 'privacy-page',

  mixins: [metaMixin]

  components: 
    'geotap-logo': GeotapLogo
    'lucre-footer': Footer 

  data: -> 
    meta: 
      title: 'Privacy Policy for GeoTap Game'
      description: ''
      image: 'http://geotapgame.com/static/geotap-game-lucre-games-lowpoly-3d-casual-relaxing-mobile-game.png'
      route: '/privacy'
}
</script>

<style lang="stylus">
.page.presskit-page
  height 100%
  padding rem(80px) rem(40px)

  .gradient-area
    fill()
    position fixed
    z-index -1
    background-image linear-gradient(0deg, #FA5B75, #5A3662)

  img.screen 
    max-width 30%
    margin-right 3% 
    margin-bottom 3%
</style>
