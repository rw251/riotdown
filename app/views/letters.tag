require('../components/action-drawer.tag');
require('../components/score-bar.tag');
require('../components/letter-grid.tag');
require('../components/actions.tag');

<letters show={ show }>

  <div class="container">
    <action-drawer></action-drawer>
    <score-bar></score-bar>
    <letter-grid></letter-grid>
    <actions></actions>
  </div>

  <script>
    var tag = this;

    tag.show = false;

    riot.control.on('show-page', function (page) {
      tag.show = page === "letters";
      tag.update();
    });
  </script>

  <style>

    @media (min-width: 1024px) {
      .container {
        width: 1024px;
        margin-left: auto;
        margin-right: auto;
        text-align: center;
      }
    }

  </style>

</letters>
