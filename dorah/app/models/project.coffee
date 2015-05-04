`import DS from 'ember-data'`

Project = DS.Model.extend
  description: DS.attr('string')
  name: DS.attr('string')

  #user: DS.belongsTo('user')

  tasks: DS.hasMany('tasks')

`export default Project`
