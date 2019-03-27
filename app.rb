require( 'sinatra' )
require('sinatra/contrib/all') if development?
require_relative('./controllers/animal_controller')
require_relative('./controllers/owner_controller')


get '/' do #home page view
  erb( :"/home" )
end
