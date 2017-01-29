require('./score.tag'); require('./clock.tag');

<score-bar>
  <score name={players.p1} score={scores.p1}></score>
  <clock time="30"></clock>
  <score name={players.p2} score={scores.p2}></score>

  <script>
    var tag = this;

    tag.scores = {
      "p1": 20,
      "p2": 20
    };
    tag.players = {
      "p1": "Player 1",
      "p2": "Player 2"
    };

    riot.control.on('scores_changed', function (scores) {
      tag.scores = scores;
      tag.update();
    });

    riot.control.on('players_changed', function (players) {
      tag.players = players;
      tag.update();
    });
  </script>
  <style>

    score-bar {
      display: -ms-flexbox;
      display: flex;
      padding: 4px 10px;
      background: #eee;
      border-bottom: 2px solid #777;
    }

  </style>
</score-bar>
