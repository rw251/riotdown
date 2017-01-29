require('./letter-tile.tag');

<letter-grid>
  <div class="tile-triplet">
    <letter-tile each={ letter in letters.slice(0,3)} letter={letter} ></letter-tile>
  </div>
  <div class="tile-triplet">
    <letter-tile each={ letter in letters.slice(3,6)} letter={letter} ></letter-tile>
  </div>
  <div class="tile-triplet">
    <letter-tile each={ letter in letters.slice(6,9)} letter={letter} ></letter-tile>
  </div>

  <script>
    var self = this;
    self.letters = [];

    self.on('mount', function () {
      // Trigger init event when component is mounted to page. Any store could respond to this.
      riot.control.trigger('letters_init')
    });

    // Register a listener for store change events.
    riot.control.on('letters_changed', function (letters) {
      self.letters = letters;
      self.update();
    });
  </script>

  <style>

    letter-grid {
      margin-top: 2px;
      padding: 0 2px;
      display: -ms-flexbox;
      display: flex;
      -ms-flex-wrap: wrap;
      /* Ensures the 3 tile-triplets collapse to a square*/
      flex-wrap: wrap;
    }

    .tile-triplet {
      -ms-flex: 0 0 100%;
      flex: 0 0 100%;
      /* Makes each triplet the full width and don't allow stretching or growing */
      padding: 2px 0;
      display: -ms-flexbox;
      display: flex;
    }
    @media (orientation: landscape) {
      .letter-grid {
        padding-bottom: 2px;
        padding-left: 1px;
        padding-right: 1px;
        margin-top: 2px;
      }
      .tile-triplet {
        -ms-flex: 1;
        flex: 1;
        padding-bottom: 0;
      }
    }

  </style>
</letter-grid>
