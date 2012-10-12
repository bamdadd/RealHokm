class Frontend < Sinatra::Base
  set :views, File.join(settings.root, '..', 'views')
  set :public_folder, File.join(settings.root, '..', '..', 'public')

  get '/?' do
    slim :homepage
  end

  get '/css/:name.css' do
    content_type 'text/css', :charset => 'utf-8'
    scss :"css/#{params[:name]}"
  end
end
