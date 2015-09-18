import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});


Router.map(function() {
  this.route('login');
  this.route('shops');

  this.route('dashboard');
  this.route('products', function() {
    this.route('new');
  });
  this.route('collections', function() {
    this.route('new');
    this.route('edit', {path: '/:id'});
  });

});


//@route 'about'
//@route 'protected'
//@route 'auth-error'

export default Router
