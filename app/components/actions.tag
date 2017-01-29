require('./my-button.tag');

<actions>
  <my-button onclick={ launch } text="Pause"></my-button>
  <my-button onclick={ change } green="green" text="Declare"></my-button>

  <script>
    var tag = this;

    tag.launch = function () {
      riot.control.trigger('tile-clear');
      riot.control.trigger('action-drawer-open');
    }

    tag.change = function () {
      riot.control.trigger('tile-enable');
    }
  </script>
  <style>

    actions {
      margin-left: auto;
      margin-right: auto;
      display: -ms-flexbox;
      display: flex;
      justify-content: space-between;
      max-width: 300px;
    }

    actions > my-button {
      margin: 2px;
      flex: 1 1 100px;
    }

  </style>
</actions>
