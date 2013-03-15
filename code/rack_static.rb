use Rack::Static,
  :urls => ['/images', '/js/','/css', '/assets'],
  :root => 'public'

map '/index.html' do
  run lambda { |env|
    [   
      200,
      {   
        'Content-Type' => 'text/html'
      },  
      File.open('public/index.html', File::RDONLY)
    ]   
  }
end
