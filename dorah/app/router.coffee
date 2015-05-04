`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map () ->
  @route 'login'
  @resource 'projects', () ->
    @route 'new'
    @resource 'project', path: ":project_id", () ->
      @route 'edit'
  @resource 'tasks', path: ":task_id", () ->
    @route 'task'

`export default Router`
