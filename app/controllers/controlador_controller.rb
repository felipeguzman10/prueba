class ControladorController < ApplicationController
  def index
  end
  def resultado
    palabra = params[:palabra]
    suma = 0
    numero = 26
    @total = 0
    array_palabra = palabra.chars
    h = Hash.new(0)
    array_palabra.map{|a| h.store(a, h[a]+1)}
    h = h.sort_by {|_key, value| value}.reverse
    h.each do |llave, valor|
      suma = valor * numero
      numero = numero - 1
      @total = @total + suma
    end
  end
end
