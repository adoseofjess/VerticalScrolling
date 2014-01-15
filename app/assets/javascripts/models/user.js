Prototype.Models.User = Backbone.Model.extend({
  urlRoot: "/users",

  lessons: function() {
    if (!this._lessons) {
      this._lessons = new Prototype.Collections.Lessons([], {
        user: this
      });
    }
    return this._lessons;
  },
    
  parse: function (serverAttributes, options) {
    this.current_course_id = serverAttributes.current_course_id;
    delete serverAttributes.current_course_id;
    this.lessons().reset(serverAttributes.lessons, {parse: true});
    delete serverAttributes.lessons;
    return serverAttributes;
  },
  
  toJSON: function () {
    var json = _.extend({}, this.attributes);
    json.lessons = this.lessons().toJSON();
    
    return json;
  }, 
});