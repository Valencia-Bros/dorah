`import DS from 'ember-data'`

Project = DS.Model.extend
  description: DS.attr('string')
  name: DS.attr('string')

  owner: DS.belongsTo('user',{async:true})
  projectUsers: DS.hasMany('user',{async:true})

  tasks: DS.hasMany('tasks',{async: true})

`export default Project`
