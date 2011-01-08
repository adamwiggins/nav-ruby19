require 'sinatra'

require 'heroku/nav'
use Heroku::Nav::Header

get '/' do
  'hello'
end
