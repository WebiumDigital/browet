import ProtectedRoute from 'browet/routes/protected';

export default ProtectedRoute.extend({
  model() {
    return this.store.find('dashboard', '');
  },
//@store.findAll('dashboard').then (records)->
//records.get('firstObject')
  renderTemplate() {
    this.render('layouts/application', {into: 'application'});
    this.render({into: 'layouts/application'});
  }
});