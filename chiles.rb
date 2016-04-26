require 'sinatra'

class Chile
  attr_accessor :name, :flavor, :heat

  def initialize(name, flavor, heat)
    @name = name
    @flavor = flavor
    @heat = heat
  end

  def to_json
    {name: @name, flavor: @flavor, heat: @head}.to_json
  end
end

get '/' do
  @chiles = %w(Guajillo Ancho Mulato Serrano Jalapeño Habanero Árbol Piquin
               Piquín Cascabel Pasilla Poblano)
  erb :index
end
