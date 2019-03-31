module Formula
  def perimetro(lados)
    lados.inject(0){ |sum, lado| sum + lado }
  end

  def area(lados)
    lados[0] * lados[1]
  end
end

class Rectangulo
  include Formula
  attr_reader :base, :altura
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lados
    print "#{@base}, #{@altura}, #{@base}, #{@altura}"
  end
end

class Cuadrado
  include Formula
  attr_reader :lado
  def initialize(lado)
    @lado = lado
  end

  def lados
    print "#{@lado}, #{@lado}, #{@lado}, #{@lado}"
  end
end

r = Rectangulo.new(8, 4)
#r.lados
puts r.perimetro([r.base, r.altura, r.base, r.altura])
puts r.area([r.base, r.altura, r.base, r.altura])
c = Cuadrado.new(4)
#c.lados
puts c.perimetro([c.lado, c.lado, c.lado, c.lado])
puts c.area([c.lado, c.lado, c.lado, c.lado])
