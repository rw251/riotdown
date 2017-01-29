require('./views/home.tag');
require('./views/letters.tag');

<app>

  <home></home>
  <letters></letters>

  <script>
    var tag = this;

    // Register a listener for store change events.
    riot.control.on('letters-round', function () {
      riot.control.trigger('show-page', "letters");
    });
  </script>

</app>
