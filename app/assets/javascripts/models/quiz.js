Prototype.Models.Quiz = Backbone.Model.extend({
  urlRoot: "/quizzes",
  
  questions: function() {
    if (!this._questions) {
      this._questions = new Prototype.Collections.Questions([], 
{quiz: this});
      this._questions.reset(this.get("questions"))
    }
    return this._questions;
  },
  
});