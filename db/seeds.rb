# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'time'

lol = Game.create(name: 'League of Legends', created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
dota = Game.create(name: 'Dota 2', created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
hots = Game.create(name: 'Heroes of the Storm', created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))

User.create(name: 'Diego', lastname: 'Martin', email: 'algo@algo.com', password: '1235', created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
User.create(name: 'Ale', lastname: 'Lopez', email: 'algo2@algo.com', password: '1235', created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))

skt = Team.create(image: '/null/', name: 'SKT', origin: 'Korea', coach: 'kkOma', created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
ssb = Team.create(image: '/null/', name: 'SSB', origin: 'Korea', coach: 'DoGGi', created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))


a = Player.create(origin: 'Korea', image: '/null/', name: 'Uno', lastname: 'Uno', nick: 'Untara', team: Team.where('name' => 'SKT').first, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
b = Player.create(origin: 'Korea', image: '/null/', name: 'Dos', lastname: 'Dos', nick: 'Blank', team: Team.where('name' => 'SKT').first, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
c = Player.create(origin: 'Korea', image: '/null/', name: 'Tres', lastname: 'Tres', nick: 'Faker', team: Team.where('name' => 'SKT').first, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
d = Player.create(origin: 'Korea', image: '/null/', name: 'Cuatro', lastname: 'Cuatro', nick: 'Bang', team: Team.where('name' => 'SKT').first, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
e = Player.create(origin: 'Korea', image: '/null/', name: 'Cinco', lastname: 'Cinco', nick: 'Wolf', team: Team.where('name' => 'SKT').first, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))

f = Player.create(origin: 'Korea', image: '/null/', name: 'Seis', lastname: 'Seis', nick: 'Acorn', team: Team.where('name' => 'SSB').first, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
g = Player.create(origin: 'Korea', image: '/null/', name: 'Siete', lastname: 'Siete', nick: 'Spirit', team: Team.where('name' => 'SSB').first, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
h = Player.create(origin: 'Korea', image: '/null/', name: 'Ocho', lastname: 'Ocho', nick: 'Heart', team: Team.where('name' => 'SSB').first, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
i = Player.create(origin: 'Korea', image: '/null/', name: 'Nueve', lastname: 'Nueve', nick: 'Dade', team: Team.where('name' => 'SSB').first, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
j = Player.create(origin: 'Korea', image: '/null/', name: 'Diez', lastname: 'Diez', nick: 'Deft', team: Team.where('name' => 'SSB').first, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))

aa = Champion.create(name: 'Morgana', game: lol, image: '/null', created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
bb = Champion.create(name: 'Jayce', game: lol, image: '/null', created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
cc = Champion.create(name: 'Lee Sin', game: lol, image: '/null', created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
dd = Champion.create(name: 'Leona', game: lol, image: '/null', created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
ee = Champion.create(name: 'Ezreal', game: lol, image: '/null', created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
ff = Champion.create(name: 'Kled', game: lol, image: '/null', created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
gg = Champion.create(name: 'Darius', game: lol, image: '/null', created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
hh = Champion.create(name: 'Ryze', game: lol, image: '/null', created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
ii = Champion.create(name: 'Zed', game: lol, image: '/null', created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
jj = Champion.create(name: 'Rumble', game: lol, image: '/null', created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
kk = Champion.create(name: 'Vayne', game: lol, image: '/null', created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))

lolmap = Map.create(name: 'Grieta del Invocador', game: lol, image: '/null/', created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))

PlayersPick.create(player: a, champion: aa, pick_rate: 0.5, win_rate: 0.6, kda: '1:2:3')
PlayersPick.create(player: a, champion: bb, pick_rate: 0.5, win_rate: 0.6, kda: '1:2:3')
PlayersPick.create(player: b, champion: cc, pick_rate: 0.5, win_rate: 0.6, kda: '1:2:3')
PlayersPick.create(player: b, champion: dd, pick_rate: 0.5, win_rate: 0.6, kda: '1:2:3')
PlayersPick.create(player: c, champion: ee, pick_rate: 0.5, win_rate: 0.6, kda: '1:2:3')
PlayersPick.create(player: c, champion: ff, pick_rate: 0.5, win_rate: 0.6, kda: '1:2:3')
PlayersPick.create(player: d, champion: gg, pick_rate: 0.5, win_rate: 0.6, kda: '1:2:3')
PlayersPick.create(player: d, champion: hh, pick_rate: 0.5, win_rate: 0.6, kda: '1:2:3')
PlayersPick.create(player: e, champion: ii, pick_rate: 0.5, win_rate: 0.6, kda: '1:2:3')
PlayersPick.create(player: e, champion: jj, pick_rate: 0.5, win_rate: 0.6, kda: '1:2:3')
PlayersPick.create(player: f, champion: kk, pick_rate: 0.5, win_rate: 0.6, kda: '1:2:3')
PlayersPick.create(player: f, champion: aa, pick_rate: 0.5, win_rate: 0.6, kda: '1:2:3')
PlayersPick.create(player: g, champion: bb, pick_rate: 0.5, win_rate: 0.6, kda: '1:2:3')
PlayersPick.create(player: g, champion: cc, pick_rate: 0.5, win_rate: 0.6, kda: '1:2:3')
PlayersPick.create(player: h, champion: dd, pick_rate: 0.5, win_rate: 0.6, kda: '1:2:3')
PlayersPick.create(player: h, champion: ee, pick_rate: 0.5, win_rate: 0.6, kda: '1:2:3')
PlayersPick.create(player: i, champion: ff, pick_rate: 0.5, win_rate: 0.6, kda: '1:2:3')
PlayersPick.create(player: i, champion: gg, pick_rate: 0.5, win_rate: 0.6, kda: '1:2:3')
PlayersPick.create(player: j, champion: hh, pick_rate: 0.5, win_rate: 0.6, kda: '1:2:3')
PlayersPick.create(player: j, champion: ii, pick_rate: 0.5, win_rate: 0.6, kda: '1:2:3')

PlayersMapPerformance.create(player: a, map: lolmap, win_rate: 0.7, loose_rate: 0.3)
PlayersMapPerformance.create(player: b, map: lolmap, win_rate: 0.7, loose_rate: 0.3)
PlayersMapPerformance.create(player: c, map: lolmap, win_rate: 0.7, loose_rate: 0.3)
PlayersMapPerformance.create(player: d, map: lolmap, win_rate: 0.7, loose_rate: 0.3)
PlayersMapPerformance.create(player: e, map: lolmap, win_rate: 0.7, loose_rate: 0.3)
PlayersMapPerformance.create(player: f, map: lolmap, win_rate: 0.7, loose_rate: 0.3)
PlayersMapPerformance.create(player: g, map: lolmap, win_rate: 0.7, loose_rate: 0.3)
PlayersMapPerformance.create(player: h, map: lolmap, win_rate: 0.7, loose_rate: 0.3)
PlayersMapPerformance.create(player: i, map: lolmap, win_rate: 0.7, loose_rate: 0.3)
PlayersMapPerformance.create(player: j, map: lolmap, win_rate: 0.7, loose_rate: 0.3)

tour = Tournament.create(name: 'LCS', date: Date.today, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
TournamentTeam.create(tournament: tour, team: skt, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
TournamentTeam.create(tournament: tour, team: ssb, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))

mu = Matchup.create(blue_team: skt, red_team: ssb, winner: skt, looser: ssb, tournament: tour, date: Date.today, :created_at => Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))

Bet.create(name: 'Primera sangre para SSB', ratio: 1.4, matchup: mu, refered: '#')
Bet.create(name: 'Primera sangre para SKT', ratio: 1.4, matchup: mu, refered: '#')
Bet.create(name: 'Gana SKT', ratio: 1.4, matchup: mu, refered: '#')
Bet.create(name: 'Gana SSB', ratio: 1.4, matchup: mu, refered: '#')
Bet.create(name: 'Gana SKT por 3-0', ratio: 1.4, matchup: mu, refered: '#')
Bet.create(name: 'Gana SSB por 3-1', ratio: 1.4, matchup: mu, refered: '#')
Bet.create(name: 'El top de SSB tiene un kda de 1:2:3', ratio: 1.4, matchup: mu, refered: '#')
Bet.create(name: 'El top de SKT tiene un kda de 3:2:1', ratio: 1.4, matchup: mu, refered: '#')

Statistic.create(ratio: 0.8, name: 'Primera sangre', player: a, team: skt, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
Statistic.create(ratio: 0.8, name: 'Primera sangre', player: b, team: skt, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
Statistic.create(ratio: 0.8, name: 'Primera sangre', player: c, team: skt, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
Statistic.create(ratio: 0.8, name: 'Primera sangre', player: d, team: skt, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
Statistic.create(ratio: 0.8, name: 'Primera sangre', player: e, team: skt, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))

Statistic.create(ratio: 0.8, name: 'Primera sangre', player: f, team: ssb, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
Statistic.create(ratio: 0.8, name: 'Primera sangre', player: g, team: ssb, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
Statistic.create(ratio: 0.8, name: 'Primera sangre', player: h, team: ssb, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
Statistic.create(ratio: 0.8, name: 'Primera sangre', player: i, team: ssb, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
Statistic.create(ratio: 0.8, name: 'Primera sangre', player: j, team: ssb, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))

Streamer.create(twitch_user_id: 123455, twitch_username: 'Streamer1', twitch_channel_url: 'Canal1', name: 'Algun', streamer_type: 1, game: lol, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
Streamer.create(twitch_user_id: 123456, twitch_username: 'Streamer2', twitch_channel_url: 'Canal2', name: 'Algun', streamer_type: 1, game: lol, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
Streamer.create(twitch_user_id: 123457, twitch_username: 'Streamer3', twitch_channel_url: 'Canal3', name: 'Algun', streamer_type: 2, game: lol, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
Streamer.create(twitch_user_id: 123458, twitch_username: 'Streamer4', twitch_channel_url: 'Canal4', name: 'Algun', streamer_type: 2, game: lol, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
Streamer.create(twitch_user_id: 123459, twitch_username: 'Streamer5', twitch_channel_url: 'Canal5', name: 'Algun', streamer_type: 3, game: lol, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))
Streamer.create(twitch_user_id: 123450, twitch_username: 'Streamer6', twitch_channel_url: 'Canal6', name: 'Algun', streamer_type: 3, game: lol, created_at: Time.now.strftime('%d/%m/%Y %H:%M'), updated_at: Time.now.strftime('%d/%m/%Y %H:%M'))