`import Ember from 'ember'`

LoginController = Ember.Controller.extend
  actions:
    authenticate: () ->
      data = @getProperties('identification', 'password')
      @get('session').authenticate('simple-auth-authenticator:devise', data)

`export default LoginController`
