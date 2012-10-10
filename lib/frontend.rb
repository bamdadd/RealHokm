class Frontend < Sinatra::Base
  get '/?' do
    slim :homepage
  end

  get '/css/screen.css' do
    content_type 'text/css', :charset => 'utf-8'
    sass :'css/screen'
  end
end
