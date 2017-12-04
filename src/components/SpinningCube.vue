<template lang="pug">
.lucre-spinning-cube(:class="{ ready: ready }")
  .cube-container 
    .cube.animate 
      div(v-if="$parent.ready")
      div(v-if="$parent.ready")
      div(v-if="$parent.ready")
      div(v-if="$parent.ready") 
      div(v-if="$parent.ready") 
      div(v-if="$parent.ready") 

</template>

<script lang="coffee">

export default {
  name: 'spinning-cube'

  data: -> ready: false

  mounted: ->
    setTimeout @buildIn, 300

  methods: 
    buildIn: -> @ready = true
}
</script>

<style lang="stylus">

.lucre-spinning-cube
  margin rem(80px) 0
  z-index 1
  gpu-cache()
  transition transform 1.8s cubic-bezier(.18,.84,.56,1.11)

  &:not(.ready) 
    transform translateY(-65vh)

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


  cubeSize = 4.5rem 

  .cube 
    position relative
    margin 0 auto
    height cubeSize*2
    width cubeSize*2
    transition transform 2s linear
    transform-style preserve-3d
    gpu-cache()

  .cube>div 
    position absolute
    height cubeSize*2
    width cubeSize*2
    background-position center center
  
  .cube div 
    background-color  #D4F3FF
    background-image linear-gradient(45deg, #D4F3FF -50%, #2AB8ED 90%)
    gpu-cache()

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
