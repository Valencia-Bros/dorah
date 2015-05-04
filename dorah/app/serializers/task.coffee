`import DS from "ember-data"`

TaskSerializer = DS.ActiveModelSerializer.extend(
  attrs:
    projects:
      deserialize: 'ids'
      serialize: 'records'
)

`export default TaskSerializer`
