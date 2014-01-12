Prototype.Collections.Courses = Backbone.Collection.extend({
  model: Prototype.Models.Course,
  url: "/courses",
});