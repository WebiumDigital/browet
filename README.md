Hosts
=====
127.0.0.1 testshop.browet.local browet.local 

Rails
=====
rake db:create db:migrate db:seed

На текущий момент рельсы лучше просто запустить на обработку апи запросов, а
на приложение заходить через сервер самого эмбера

Ember
=====

cd ember_app  
npm install  
bower install  
ember server  

Заходить через browet.local:4200
  
Todo
=====

Сделать валидацию параметрво на уровне grape для    
- Collection  
- LinkList  

Придумать что делать с вовзращением записи с изменеными пустыми полями(slug) при ошибке записи