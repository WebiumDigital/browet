import Ember from 'ember';
import Config from './config/environment';

var Router = Ember.Router.extend({
  location: Config.locationType
});


Router.map(function() {
  this.route('login');
  this.route('shops');

  this.route('dashboard');
  this.route('products', function() {
    this.route('new');
  });
  this.route('menus', function() {
    this.route('new');
    this.route('edit', {path: '/:id'});
  });
  this.route('categories', function() {
    this.route('new');
    this.route('edit', {path: '/:id'});
  });
  this.route('collections', function() {
    this.route('new');
    this.route('edit', {path: '/:id'});
  });
});


//@route 'about'
//@route 'protected'
//@route 'auth-error'

export default Router;
