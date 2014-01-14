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