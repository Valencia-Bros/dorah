`import Ember from 'ember'`

TaskSaveControllerMixin = Ember.Mixin.create(
  availableProjects: (->
    @store.find('project')
  ).property()
)

`export default TaskSaveControllerMixin`
