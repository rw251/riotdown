// GameStore definition.
module.exports = function() {
  riot.observable(this); // Riot provides our event emitter.

  var self = this;

  self.gamedata = {
    "e": "3953",
    "d": "23 June 2005",
    "i": "first quarter-final of Series 53",
    "p1": {
      "n": "Fred Reynolds",
      "s": 58
    },
    "p2": {
      "n": "John Brackstone",
      "s": 75
    },
    "g": "Philip Franks",
    "l": "Susie Dent",
    "r": [
      { "1": "LEOTARD", "2": "MODERATE", "l": "OEDRLAETM" },
      { "l": "OEDRLAETM", "1": "LEOTARD", "2": "MODERATE" },
      { "l": "TNHOEAFQT", "1": "ATONE", "2": "FATTEN", "d": ["NOTATE"] },
      { "l": "RSFEOIRTN", "1": "FROSTIER", "2": "FRONTIERS" },
      { "l": "YNLEAEHZN", "1": "HENNA", "2": "LAZY", "d": ["HYENA"], "c": ["ANELE", "HAZEL"] },
      { "n": [9, 2, 5, 4, 10, 100], "t": 831, "2": 830, "2-bad": true, "best": 831, "sol": "2 × 4 × (100 + 5) − 9" },
      { "l": "SDGUIOTDE", "1": "DODGIEST", "2": "OUTSIDE" },
      { "l": "ARCOASVUR", "1": "SCOUR", "2": "SCOUR", "c": ["AURORAS", "VARROAS"] },
      { "l": "TMTAOAPBE", "1": "MATTO", "1-bad": true, "2": "MATTE", "d": ["AMOEBA", "TEAPOT"], "c": ["BEMATA"] },
      { "l": "CTPIEOSLN", "1": "LECTIONS", "2": "NOTICES", "d": ["LEPTONIC"], "c": ["PONCIEST"] },
      { "n": [1, 6, 7, 4, 7, 50], "t": 272, "1": 272, "1-sol": "6 × 50 − 7 × 4", "2": 272, "2-sol": "6 × 50 − 7 × 4" },
      { "l": "DAIEKRIWM", "1": "MARKED", "2": "MARKED", "d": ["ADMIRE", "WARMED"], "c": ["DARKIE", "DEMARK", "RAMKIE"] },
      { "l": "RTLAEARMO", "1": "MORALE", "2": "OATMEAL", "d": ["REALTOR"], "c": ["RELATOR", "ROTAMER", "AERATOR", "AREOLAR"] },
      { "l": "AUNDSIUBA", "1": "UNSAID", "2": "SAUNA", "c": ["BINDAAS", "INDABAS"] },
      { "n": [10, 8, 6, 2, 3, 25], "t": 322, "1": 322, "1-sol": "(3 + 10) × 25 − 6 ÷ 2", "2": 322, "2-sol": "(6 ÷ 2 + 10) × 25 − 3" },
      { "l": "HOTCANDLE", "sol": "DECATHLON" }
    ]
  };

  self.game = {};

  self.round = 0;

  // Our store's event handlers / API.
  // This is where we would use AJAX calls to interface with the server.
  // Any number of views can emit actions/events without knowing the specifics of the back-end.
  // This store can easily be swapped for another, while the view components remain untouched.

  self.on('start-game', function() {
    self.players = { "p1": "Richard Williams", "p2": self.gamedata.p1.n };
    self.trigger('players_changed', self.players);

    self.scores = { "p1": 0, "p2": 0 };
    self.trigger('scores_changed', self.scores);

    self.trigger('letters-round', self.gamedata.r[0]);
  });

  self.on('letters_init', function() {
    self.trigger('letters_changed', self.gamedata.r[0].l);
  });

  self.on('diagnostics', function() {
    self.trigger('show-page', "diagnostics");
  });

  // The store emits change events to any listening views, so that they may react and redraw themselves.

};
