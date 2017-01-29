<letter-tile>

  <div class="tile-wrapper">
    <div class="tile">{opts.letter || " "}</div>
  </div>

  <script>
    var self = this;

    self.click = function(event) {
      self.root.style.cursor = "default";
      self.root.onclick = null;
      self.root.firstChild.className += " highlighted";
    };

    // Register a listener for store change events.
    riot.control.on('tile-enable', function () {
      self.root.style.cursor = "pointer";
      self.root.onclick = self.click;
    });

    // Register a listener for store change events.
    riot.control.on('tile-clear', function () {
      self.root.style.cursor = "default";
      self.root.onclick = null;
      self.root.firstChild.className = self.root.firstChild.className.replace(/ highlighted/g,"");
    });

  </script>

  <style>

    /*Use flex box to ensure the 3 tiles in a triplet are evenly spaced and take up max width available*/
    letter-tile {
      -ms-flex: 1;
      flex: 1;
      padding-right: 2px;
      padding-left: 2px;
    }

    .tile-wrapper {
      width: 100%;
      padding-bottom: 100%;
      /* Makes the tile square */
      position: relative;
      background: #00f;
    }

    .tile-wrapper.highlighted {
      background: #ccc;
    }

    .tile {
      position: absolute;
      top: 0;
      bottom: 0;
      left: 0;
      right: 0;
      color: white;
      font-family: 'Roboto Mono', monospace;
      text-align: center;
      line-height: calc(29vw);
      font-size: calc(33vw);
    }
    @media (orientation: landscape) {
      .tile-wrapper {
        padding-right: 1px;
        padding-left: 1px;
      }
      .tile {
        line-height: calc(9.6vw);
        font-size: calc(11vw);
      }
    }
    @media (min-width: 1024px) {

      .tile {
        line-height: 98.208px;
        font-size: 112.53px;
      }
    }

  </style>

</letter-tile>
