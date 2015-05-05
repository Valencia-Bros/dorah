`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

TasksNewRoute = Ember.Route.extend(
  AuthenticatedRouteMixin,
  queryParams:
    project_id:
      refreshModel: true

  model: (params) ->
    task = @store.createRecord "task"
    if !!params.project_id
      @store.find('project',params.project_id).then (project) =>
        task.set('project',project)
    task

)

`export default TasksNewRoute`
