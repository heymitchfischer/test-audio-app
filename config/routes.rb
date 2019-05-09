Rails.application.routes.draw do
  get '/' => 'application#home'
  get '/send_audio' => 'application#send_audio'
  get '/compare' => 'application#compare'
end
