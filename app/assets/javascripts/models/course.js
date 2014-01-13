Prototype.Models.Course = Backbone.Model.extend({
  urlRoot: "/courses",
    
  lessons: function() {
    if (!this._lessons) {
      this._lessons = new Prototype.Collections.Lessons([], {course: this});
    }
    return this._lessons;
  },
  
  parse: function(serverAttributes, options) {
    this.lessons().reset(serverAttributes.lessons);
    delete serverAttributes.lessons;
    return serverAttributes;
  },
  
  toJSON: function() {
    var formData = _.extend({}, this.attributes);
    formData.lessons = this.lessons().toJSON();
    // add anything here?
    return formData;
  },
  
});