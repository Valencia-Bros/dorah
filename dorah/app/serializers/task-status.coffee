`import DS from "ember-data"`

TaskStatusSerializer = DS.ActiveModelSerializer.extend(
  attrs:
    project:
      deserialize: 'ids'
      serialize: 'records'
)

`export default TaskStatusSerializer`
