window.Prototype = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    Prototype.courses = new Prototype.Collections.Courses();
    var userData = JSON.parse($("#bootstrapped_current_user_json").html());
    Prototype.current_user = new Prototype.Models.User(userData, {parse: true});    
    Prototype.courses.fetch({
      success: function() {
        Prototype.lessons = new Prototype.Collections.Lessons();
        Prototype.lessons.fetch({
          success: function() {
            new Prototype.Routers.PrototypeRouter($(".container"));
            Backbone.history.start();
          }
        })
      }
    });
  }
};

$(document).ready(function(){
  Prototype.initialize();
});
