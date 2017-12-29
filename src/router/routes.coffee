import Home from '@/pages/Home'
import PressKit from '@/pages/PressKit'
import Privacy from '@/pages/Privacy'

routes = [
  {
    path: '/'
    name: 'Home'
    component: Home
  }
  {
    path: '/presskit'
    name: 'PressKit'
    component: PressKit
  }
  {
    path: '/privacy'
    name: 'Privacy'
    component: Privacy
  }
  {
    # 404 Catch all
    path: '*'
    redirect: '/' 
  }
]

# // Build route list for prerendering 
# const routes = require('../src/router/routes.coffee')
# let flatMap = require('lodash.flatMap')
# let pull = require('lodash.pull')

# prerenderRoutes = pull(flatMap(routes, 'path'), '*')

export default routes 