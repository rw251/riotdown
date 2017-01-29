require('./app.tag');
riot.control = require('riotcontrol');
var LettersStore = require('./stores/letters-store');
var GameStore = require('./stores/game-store');

var lettersStore = new LettersStore(); // Create a store instance.
var gameStore = new GameStore();
riot.control.addStore(lettersStore); // Register the store in central dispatch.
riot.control.addStore(gameStore);

riot.mount('*');
