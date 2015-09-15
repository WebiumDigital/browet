import Ember from 'ember';
import RouteApplicationTemplateMixin from '../../../mixins/route-application-template';
import { module, test } from 'qunit';

module('Unit | Mixin | route application template');

// Replace this with your real tests.
test('it works', function(assert) {
  var RouteApplicationTemplateObject = Ember.Object.extend(RouteApplicationTemplateMixin);
  var subject = RouteApplicationTemplateObject.create();
  assert.ok(subject);
});
