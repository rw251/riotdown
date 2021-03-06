require('../components/my-button.tag');

<home show={ show }>
  <h1>Countdown</h1>

  <input type="text"/>

  <my-button onclick={start} text="Start"></my-button>
  <my-button onclick={diagnostics} text="Diagnostics"></my-button>

  <script>
    var tag = this;

    tag.show = true;

    tag.start = function () {
      riot.control.trigger('start-game');
    };

    tag.diagnostics = function () {
      riot.control.trigger('diagnostics');
    };

    riot.control.on('show-page', function (page) {
      tag.show = page === "home";
      tag.update();
    });
  </script>
</home>
