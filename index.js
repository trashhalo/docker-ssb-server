const flotilla = require("@fraction/flotilla");
const ssbConfig = require("ssb-config");
const server = flotilla(ssbConfig);

server({
  conn: {
    autostart: true
  },
  ws: {
    http: false
  }
});
