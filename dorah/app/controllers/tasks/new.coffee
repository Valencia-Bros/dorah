`import Ember from 'ember'`
`import ModelSaveControllerMixin from 'dorah/mixins/model-save-controller'`
`import TaskSaveControllerMixin from 'dorah/mixins/task-save-controller'`

TasksNewController = Ember.Controller.extend(
  ModelSaveControllerMixin,
  TaskSaveControllerMixin

  queryParams: [
    'project_id'
  ]

  project_id: null

)

`export default TasksNewController`
