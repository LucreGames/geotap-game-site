<template lang="pug">
.lucre-reviews

  .review-list 
    .review(v-for='review in reviews' :key='review.title')
      h4(v-html='review.title')
      .stars 
        span.icon-star(v-for='i in review.stars')
      p.copy(v-html='review.copy')

</template>

<script lang="coffee">
export default {
  name: 'reviews'

  data: ->
    reviews: [
      {
        title: "Simple to play, hard to master!"
        stars: 5
        copy: "Was turned on to this game from a friend and it’s great! Super easy to play but very challenging and fun… I find myself laughing because I just can’t keep from wanting to go fast and patience is definitely your friend with this game. Great job!"
      }
      {
        title: "Hypnotic, engaging and challenging!"
        stars: 5
        copy: "An elegant blend of art and challenge, the game will work your brain, while exercising your need to fidget&mdash;all while providing and ambient soundtrack that you can somewhat control. Very nice."
      }
      {
        title: "Simple, easy, excellent."
        stars: 5
        copy: "This game makes me happy to open it. The sound and colors are all thought out well and the gameplay is relaxing and or challenging. It’s a great little game when I have time to kill."
      }
      {
        title: "Fantastic for all ages."
        stars: 5
        copy: "I wasn’t too sure when I downloaded this game because it’s so simple but it’s strangely addictive. Even my kiddos enjoy it."
      }
    ]
}
</script>

<style lang="stylus">
.lucre-reviews
  padding rem(80px)

  @media(max-width tablet) 
    padding rem(20px)

  .review-list 
    display flex
    flex-wrap wrap
    max-width rem(1000px)
    margin 0 auto

  .review 
    width 50%
    padding rem(30px) rem(50px) 0
    padding-bottom 0
    text-align left

    @media(max-width tablet)
      width auto
      padding rem(20px)
      max-width 400px
      margin 0 auto

    h4 
      font-size 22px

    .copy 
      font-size 18px
      line-height 1.4

  .stars span 
    color yellow 
    font-size 24px
</style>
