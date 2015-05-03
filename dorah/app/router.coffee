`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map () ->
  @route 'login'
  @resource 'projects', () ->
    @route 'project'
  @resource 'tasks', () ->
    @route 'task'

`export default Router`
