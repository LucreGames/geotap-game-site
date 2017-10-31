<template lang="pug">
.lucre-spinning-cube
  .cube-container 
    .cube.animate 
      div 
      div 
      div 
      div 
      div 
      div 

</template>

<script lang="coffee">

export default {
  name: 'spinning-cube'
}
</script>

<style lang="stylus">

.lucre-spinning-cube
  @keyframes spinningH {
    from {
      transform rotateX(0deg) rotateY(0deg)
    }
    to {
      transform rotateX(360deg) rotateY(360deg)
    }
  }

  .cube-container 
    perspective 1000px
    perspective-origin 50% 50%
  
  .animate 
    animation spinningH 10s infinite linear


  cubeSize = 90px 

  .cube 
    position relative
    margin 0 auto
    height cubeSize*2
    width cubeSize*2
    transition transform 2s linear
    transform-style preserve-3d

  .cube>div 
    position absolute
    height cubeSize*2
    width cubeSize*2
    background-position center center
  
  .cube div 
    background-color  #2E272F
    background-image linear-gradient(45deg, #2AB8ED, #D4F3FF 130%)

  .cube>div:nth-child(1) 
    transform translateZ(cubeSize)
    
  .cube>div:nth-child(2) 
    transform rotateY(90deg) translateZ(cubeSize)

  .cube>div:nth-child(3) 
    transform rotateY(180deg) translateZ(cubeSize)
  
  .cube>div:nth-child(4) 
    transform rotateY(-90deg) translateZ(cubeSize)

  .cube>div:nth-child(5) 
    transform rotateX(-90deg) translateZ(cubeSize)

  .cube>div:nth-child(6) 
    transform rotateX(90deg) translateZ(cubeSize)

</style>
