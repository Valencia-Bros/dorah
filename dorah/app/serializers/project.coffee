`import DS from "ember-data"`

ProjectSerializer = DS.ActiveModelSerializer.extend(
  attrs:
    tasks:
      deserialize: 'ids'
      serialize: 'records'
)

`export default ProjectSerializer`
