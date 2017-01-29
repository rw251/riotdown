// LetterStore definition.
// Flux stores house application logic and state that relate to a specific domain.
// In this case, a list of todo items.
module.exports = function() {
  riot.observable(this); // Riot provides our event emitter.

  var self = this;

  self.letters = ["A","A","","A","A","A","A","A","Z"];

  // Our store's event handlers / API.
  // This is where we would use AJAX calls to interface with the server.
  // Any number of views can emit actions/events without knowing the specifics of the back-end.
  // This store can easily be swapped for another, while the view components remain untouched.

  self.on('letters_init', function() {
    self.trigger('letters_changed', self.letters);
  });

  // The store emits change events to any listening views, so that they may react and redraw themselves.

};
