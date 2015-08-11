var sqlite3 = require ('sqlite3').verbose();
var db = new sqlite3.Database ('data/database.db')

db.run ("CREATE TABLE IF NOT EXISTS coders ("+
    "id INTEGER PRIMARY KEY, " +
    "profile_photo_filename TEXT ," +
    "name TEXT NOT NULL," +
    "email TEXT NOT NULL," +
    "charity_name TEXT" +
    ");");

db.run ("CREATE TABLE IF NOT EXISTS donors ("+
    "id INTEGER PRIMARY KEY, " +
    "profile_photo_filename TEXT ," +
    "name TEXT NOT NULL," +
    "email TEXT NOT NULL," +
    "charity_name TEXT," +
    "cents_pledged INTEGER NOT NULL" +
    ");");

db.run ("CREATE TABLE IF NOT EXISTS users ("+
    "id INTEGER PRIMARY KEY, " +
    "profile_photo_filename TEXT ," +
    "name TEXT NOT NULL," +
    "email TEXT NOT NULL," +
    "charity_name TEXT," +
    "cents_pledged INTEGER NOT NULL" +
    ");");

db.close();