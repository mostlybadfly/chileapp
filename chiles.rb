require 'sinatra'
require 'csv'

Chile = Struct.new(:name, :flavor, :heat)
csv = CSV.read('chiles.csv')
csv.shift

get '/' do
  @chiles = csv.map { |row| Chile.new(row[0], row[1], row[2]) }
  erb :index
end
