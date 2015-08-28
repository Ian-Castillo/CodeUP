var sqlite3 = require ('sqlite3').verbose();

module.exports = function(config) {
  var db = new sqlite3.Database(config.data_dir + 'database.db')

  return db.serialize (function() {
    db.run ("CREATE TABLE IF NOT EXISTS users ("+
        "id INTEGER PRIMARY KEY, " +
        "profile_photo_filename TEXT ," +
        "name TEXT NOT NULL," +
        "email TEXT NOT NULL" +
        ");");

    db.run ("CREATE TABLE IF NOT EXISTS coders ("+
        "id INTEGER PRIMARY KEY, " +
        "github_user TEXT NOT NULL," +
        "github_oauth TEXT," +
        "created INTEGER NOT NULL DEFAULT CURRENT_TIMESTAMP," +
        "user_id INTEGER NOT NULL UNIQUE," +
        "FOREIGN KEY (user_id) REFERENCES users(id)" +
        ");");

    db.run ("CREATE TABLE IF NOT EXISTS donors ("+
        "id INTEGER PRIMARY KEY, " +
        "charity_name TEXT," +
        "cents_pledged INTEGER NOT NULL," +
        "user_id INTEGER NOT NULL UNIQUE," +
        "FOREIGN KEY (user_id) REFERENCES users(id)" +
        ");");
  });
};
