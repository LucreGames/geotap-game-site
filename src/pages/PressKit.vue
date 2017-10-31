<template lang="pug">
.page.presskit-page
  h1 Press Kit
  
</template>

<script lang="coffee">
metaMixin = require '@/mixins/meta'

export default {
  name: 'presskit-page',

  mixins: [metaMixin]

  data: -> 
    meta: 
      title: 'press kit title test'
      description: 'press kit description test'
      image: 'press kit image test'
}
</script>

<style lang="stylus" scoped>
.page.presskit-page
  //
</style>
