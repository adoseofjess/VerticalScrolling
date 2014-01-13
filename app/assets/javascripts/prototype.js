window.Prototype = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    Prototype.courses = new Prototype.Collections.Courses();
    Prototype.courses.fetch({
      success: function() {
        new Prototype.Routers.PrototypeRouter($(""));
        Backbone.history.start();
      }
    });
  }
};

$(document).ready(function(){
  Prototype.initialize();
});
