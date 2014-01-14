window.Prototype = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    Prototype.courses = new Prototype.Collections.Courses();
    // var courseData = JSON.parse($("#bootstrapped_course_json").html());
//     console.log(courseData)
    var userData = JSON.parse($("#bootstrapped_current_user_json").html());
    console.log(userData)
    Prototype.current_user = new Prototype.Models.User(userData, {parse: true});
    // Prototype.course = new Prototype.Models.Course(courseData, {parse:true});
    // new Prototype.Routers.PrototypeRouter($(".container"));
//     Backbone.history.start();
    
    Prototype.courses.fetch({
      success: function() {
        new Prototype.Routers.PrototypeRouter($(".container"));
        Backbone.history.start();
      }
    });
  }
};

$(document).ready(function(){
  Prototype.initialize();
});
