class HomeController < ApplicationController
  def index
    @games = Game.all
  end

  # @return [Streamers]
  def streamers
    render json: '{"data":
                         [
                             {
                                 "id":0,
                                 "user_id":"23161357",
                                 "game_id":"417752",
                                 "user_name": "Juanchiman",
                                 "type":"live",
                                 "title":"Panchangueos en liga diamante 1",
                                 "viewer_count":150,
                                 "started_at":"2017-08-14T16:08:32Z",
                                 "language":"en",
                                 "thumbnail_url":"/assets/images/live_user_carritoskami-320x180.jpg"
                             },
                             {
                                 "id":1,
                                 "user_id":"23161357",
                                 "game_id":"417752",
                                 "user_name": "xPeke",
                                 "type":"live",
                                 "title":"Hoy toca enseñar a farmear en mid",
                                 "viewer_count":100,
                                 "started_at":"2017-08-14T16:08:32Z",
                                 "language":"en",
                                 "thumbnail_url":"assets/img/live_user_logiiyt-320x180.jpg"
                             },
                             {
                                 "id":2,
                                 "user_id":"23161357",
                                 "game_id":"417752",
                                 "user_name": "OGN Live",
                                 "type":"live",
                                 "title":"Final cup - League of Legends 2017",
                                 "viewer_count":80,
                                 "started_at":"2017-08-14T16:08:32Z",
                                 "language":"en",
                                 "thumbnail_url":"assets/img/live_user_stray228-320x180.jpg"
                             },
                             {
                                 "id":3,
                                 "user_id":"23161357",
                                 "game_id":"417752",
                                 "user_name": "Streamer 4",
                                 "type":"live",
                                 "title":"Titulo 4",
                                 "viewer_count":50,
                                 "started_at":"2017-08-14T16:08:32Z",
                                 "language":"en",
                                 "thumbnail_url":"assets/img/live_user_carritoskami-320x180.jpg"
                             },
                             {
                                 "id":4,
                                 "user_id":"23161357",
                                 "game_id":"417752",
                                 "user_name": "Streamer 5",
                                 "type":"live",
                                 "title":"Titulo 5",
                                 "viewer_count":50,
                                 "started_at":"2017-08-14T16:08:32Z",
                                 "language":"en",
                                 "thumbnail_url":"assets/img/live_user_logiiyt-320x180.jpg"
                             },
                             {
                                 "id":5,
                                 "user_id":"23161357",
                                 "game_id":"417752",
                                 "user_name": "Streamer 6",
                                 "type":"live",
                                 "title":"Titulo 6",
                                 "viewer_count":40,
                                 "started_at":"2017-08-14T16:08:32Z",
                                 "language":"en",
                                 "thumbnail_url":"assets/img/live_user_stray228-320x180.jpg"
                             },
                             {
                                 "id":6,
                                 "user_id":"23161357",
                                 "game_id":"417752",
                                 "user_name": "Streamer 7",
                                 "type":"live",
                                 "title":"Titulo 7",
                                 "viewer_count":50,
                                 "started_at":"2017-08-14T16:08:32Z",
                                 "language":"en",
                                 "thumbnail_url":"assets/img/live_user_carritoskami-320x180.jpg"
                             },
                             {
                                 "id":7,
                                 "user_id":"23161357",
                                 "game_id":"417752",
                                 "user_name": "Streamer 8",
                                 "type":"live",
                                 "title":"Titulo 8",
                                 "viewer_count":50,
                                 "started_at":"2017-08-14T16:08:32Z",
                                 "language":"en",
                                 "thumbnail_url":"assets/img/live_user_logiiyt-320x180.jpg"
                             }
                         ],
                     "pagination":{"cursor":"eyJiIjpudWxsLCJhIjp7Ik9mZnNldCI6MjB9fQ=="}
    }'
  end
end
