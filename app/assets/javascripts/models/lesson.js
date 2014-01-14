Prototype.Models.Lesson = Backbone.Model.extend({
  urlRoot: "/lessons",

  sublessons: function() {
    if (!this._sublessons) {
      this._sublessons = new Prototype.Collections.Sublessons([], {lesson: this});
      this._sublessons.reset(this.get("sublessons"))
    }
    return this._sublessons;
  },
  
  quizzes: function() {
    if (!this._quizzes) {
      this._quizzes = new Prototype.Collections.Quizzes([], 
{lesson: this});
      this._quizzes.reset(this.get("quizzes"))
    }
    return this._quizzes;
  },
  
  parse: function (serverAttributes, options) {
    this.sublessons().reset(serverAttributes.sublessons, {parse: true});
    delete serverAttributes.tasks;
    return serverAttributes;
  },
});