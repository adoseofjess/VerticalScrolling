window.Prototype = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    console.log("hi");
    Prototype.courses = new Prototype.Collections.Courses();
    Prototype.courses.fetch({
      success: function() {
        alert("pulled down");
        new Prototype.Routers.PrototypeRouter($(""));
        Backbone.history.start();
      }
    });
  }
};

$(document).ready(function(){
  Prototype.initialize();
});
