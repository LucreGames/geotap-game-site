site = require '@/../config/site'

title = document.querySelector("title")
ogImage = document.querySelector("meta[property='og:image']")
ogTwitterImage = document.querySelector("meta[property='twitter:image']")

ogTitle = document.querySelector("meta[property='og:title']")
ogTwitterTitle = document.querySelector("meta[property='twitter:title']")

ogUrl = document.querySelector("meta[property='og:url']")
ogTwitterUrl = document.querySelector("meta[property='twitter:url']")

ogDescr = document.querySelector("meta[property='og:description']")
ogTwitterDescr = document.querySelector("meta[property='twitter:description']")

ogSiteName = document.querySelector("meta[property='og:site_name']")


module.exports =
  beforeMount: -> 
    return unless @meta 
    title.text = @meta.title if @meta.title
    ogTitle.content = @meta.title if @meta.title
    ogTwitterTitle.content = @meta.title if @meta.title
    
    ogImage.content = @meta.image if @meta.image
    ogTwitterImage.content = @meta.image if @meta.image

    ogDescr.content = @meta.description if @meta.description
    ogTwitterDescr.content = @meta.description if @meta.description

    ogUrl.content = site.page.url + @meta.route
    ogTwitterUrl.content = site.page.url + @meta.route

    ogSiteName.content = @meta.title if @meta.title