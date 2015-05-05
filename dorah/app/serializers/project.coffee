`import DS from "ember-data"`

ProjectSerializer = DS.ActiveModelSerializer.extend(
  DS.EmbeddedRecordsMixin,
  attrs:
    tasks:
      deserialize: 'ids'
      serialize: 'records'
    taskStatuses:
      deserialize: 'ids'
      serialize: 'records'
)

`export default ProjectSerializer`
