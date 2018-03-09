<template lang="pug">
#app
  transition(name="fade")
    router-view(v-show="ready")
</template>

<script lang="coffee">
export default {
  name: 'app'

  data: -> ready: false 

  mounted: ->
    setTimeout =>
      this.ready = true;
    , 200
}
</script>

<style lang="stylus">
#app 
  font-family 'Avenir', Helvetica, Arial, sans-serif
  -webkit-font-smoothing antialiased
  -moz-osx-font-smoothing grayscale
  text-align center
  color #2c3e50
  height 100%

</style>
