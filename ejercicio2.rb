module Formula
  def perimetro(lado1, lado2 = lado1)
    (lado1 + lado2) * 2.0
  end

  def area(lado1, lado2 = lado1)
    (lado1 * lado2)
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
    puts "Base: #{@base}, Altura: #{@altura}"
  end


end

class Cuadrado
  include Formula
  attr_reader :lado
  def initialize(lado)
    @lado = lado
  end

  def lados
    puts "Lado: #{@lado}"
  end

end

cuadrado1 = Cuadrado.new(5.0)
puts "Nuevo Cuadrado creado de Lado: #{cuadrado1.lado}"
puts "Perímetro del Cuadrado #{cuadrado1.perimetro(cuadrado1.lado)}"
puts "Área del Cuadrado #{cuadrado1.area(cuadrado1.lado)}"
puts "-------------------------"
rectangulo = Rectangulo.new(4.0, 5.0)
puts "Nuevo Rectángulo creado de Base: #{rectangulo.base} y Altura: #{rectangulo.altura}"
puts "Perímetro del Rectángulo #{rectangulo.perimetro(rectangulo.base, rectangulo.altura)}"
puts "Área del Rectángulo #{rectangulo.area(rectangulo.base, rectangulo.altura)}"
