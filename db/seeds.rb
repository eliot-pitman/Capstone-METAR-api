User.create!([
  {name: "Jean Gusikowski", email: "houston_koepp@safetymail.info", password: "password", password_confirmation: "password", username: "lady.homenick", home_airport: "lax", avitar: "https://dummyimage.com/300x300/46c1ba/6a00cb.png?text="},
  {name: "Tessie Moen", email: "joan@mailinator.com", password: "password", password_confirmation: "password", username: "jana_greenholt", home_airport: "plk", avitar: "https://dummyimage.com/300x300/559901/e43aef.png?text="},
  {name: "Luigi Thompson", email: "tammera@suremail.info", password: "password", password_confirmation: "password", username: "elvira", home_airport: "lax", avitar: "https://dummyimage.com/300x300/9b10ef/31992e.png?text="},
  {name: "Polly Mante", email: "dolly@safetymail.info", password: "password", password_confirmation: "password", username: "franklyn.goyette", home_airport: "jfk", avitar: "https://dummyimage.com/300x300/2f4e0c/9e9c9b.png?text="},
  {name: "Cleopatra Zboncak", email: "shanon@suremail.info", password: "password", password_confirmation: "password", username: "gayla", home_airport: "plk", avitar: "https://dummyimage.com/300x300/8fbb55/589640.png?text="},
  {name: "Cayla Gerlach", email: "dana@spamherelots.com", password: "password", password_confirmation: "password", username: "enola", home_airport: "bbg", avitar: "https://dummyimage.com/300x300/775f71/502f88.png?text="},
  {name: "Melody Weimann", email: "chung_gleason@spamherelots.com", password: "password", password_confirmation: "password", username: "dalton.stiedemann", home_airport: "lax", avitar: "https://dummyimage.com/300x300/cb16e4/34c2ff.png?text="}
])

Favorite.create!([
  {user_id: "1", airport_id: "551", airport_iata: "BBG", airport_icao: "NGTU", airport_name: "Butaritari Atoll Airport"},
  {user_id: "1", airport_id: "551", airport_iata: "BBG", airport_icao: "NGTU", airport_name: "Butaritari Atoll Airport"},
  {user_id: "1", airport_id: "551", airport_iata: "BBG", airport_icao: "NGTU", airport_name: "Butaritari Atoll Airport"},
  {user_id: "1", airport_id: "551", airport_iata: "BBG", airport_icao: "NGTU", airport_name: "Butaritari Atoll Airport"},
  {user_id: "1", airport_id: "551", airport_iata: "BBG", airport_icao: "NGTU", airport_name: "Butaritari Atoll Airport"},
  {user_id: "6", airport_id: "5647", airport_iata: "ORD", airport_icao: "KORD", airport_name: "O'Hare International Airport"},
  {user_id: "6", airport_id: "5647", airport_iata: "ORD", airport_icao: "KORD", airport_name: "O'Hare International Airport"},
  {user_id: "6", airport_id: "4957", airport_iata: "MSY", airport_icao: "KMSY", airport_name: "Louis Armstrong New Orleans International Airport"},
  {user_id: "6", airport_id: "551", airport_iata: "BBG", airport_icao: "NGTU", airport_name: "Butaritari Atoll Airport"},
  {user_id: "6", airport_id: "551", airport_iata: "BBG", airport_icao: "NGTU", airport_name: "Butaritari Atoll Airport"},
  {user_id: "6", airport_id: "7053", airport_iata: "STL", airport_icao: "KSTL", airport_name: "Lambert–St. Louis International Airport"},
  {user_id: "3", airport_id: "551", airport_iata: "BBG", airport_icao: "NGTU", airport_name: "Butaritari Atoll Airport"},
  {user_id: "3", airport_id: "778", airport_iata: "BKG", airport_icao: "KBBG", airport_name: "Branson Airport (FAA: BBG)"},
  {user_id: "3", airport_id: "7053", airport_iata: "STL", airport_icao: "KSTL", airport_name: "Lambert–St. Louis International Airport"},
  {user_id: "5", airport_id: "410", airport_iata: "ATL", airport_icao: "KATL", airport_name: "Hartsfield–Jackson Atlanta International Airport"},
  {user_id: "5", airport_id: "4044", airport_iata: "LAX", airport_icao: "KLAX", airport_name: "Los Angeles International Airport"},
  {user_id: "5", airport_id: "410", airport_iata: "ATL", airport_icao: "KATL", airport_name: "Hartsfield–Jackson Atlanta International Airport"},
  {user_id: "5", airport_id: "5647", airport_iata: "ORD", airport_icao: "KORD", airport_name: "O'Hare International Airport"},
  {user_id: "5", airport_id: "410", airport_iata: "ATL", airport_icao: "KATL", airport_name: "Hartsfield–Jackson Atlanta International Airport"},
  {user_id: "5", airport_id: "6731", airport_iata: "SGF", airport_icao: "KSGF", airport_name: "Springfield–Branson National Airport"},
  {user_id: "5", airport_id: "7529", airport_iata: "TOL", airport_icao: "KTOL", airport_name: "Toledo Express Airport"},
  {user_id: "5", airport_id: "410", airport_iata: "ATL", airport_icao: "KATL", airport_name: "Hartsfield–Jackson Atlanta International Airport"},
  {user_id: "4", airport_id: "7053", airport_iata: "STL", airport_icao: "KSTL", airport_name: "Lambert–St. Louis International Airport"},
  {user_id: "4", airport_id: "239", airport_iata: "ALN", airport_icao: "KALN", airport_name: "St. Louis Regional Airport"},
  {user_id: "4", airport_id: "5647", airport_iata: "ORD", airport_icao: "KORD", airport_name: "O'Hare International Airport"},
  {user_id: "4", airport_id: "778", airport_iata: "BKG", airport_icao: "KBBG", airport_name: "Branson Airport (FAA: BBG)"},
  {user_id: "4", airport_id: "410", airport_iata: "ATL", airport_icao: "KATL", airport_name: "Hartsfield–Jackson Atlanta International Airport"},
  {user_id: "7", airport_id: "6731", airport_iata: "SGF", airport_icao: "KSGF", airport_name: "Springfield–Branson National Airport"},
  {user_id: "7", airport_id: "4582", airport_iata: "MDW", airport_icao: "KMDW", airport_name: "Midway International Airport"},
  {user_id: "7", airport_id: "7299", airport_iata: "TDZ", airport_icao: "KTDZ", airport_name: "Toledo Executive Airport"},
  {user_id: "7", airport_id: "538", airport_iata: "BAQ", airport_icao: "SKBQ", airport_name: "Ernesto Cortissoz International Airport"}
])


