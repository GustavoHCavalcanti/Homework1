class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s          # garante string
    attr_reader attr_name                
    attr_reader attr_name + "_history"   

    class_eval %Q{
      def #{attr_name}=(value)
        # inicializa histórico se ainda não existir
        @#{attr_name}_history = [nil] unless defined?(@#{attr_name}_history)

        # adiciona valor novo ao histórico
        @#{attr_name}_history << value

        # seta o valor atual
        @#{attr_name} = value
      end
    }
  end
end

# Teste
class Foo
  attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 3
f.bar = :wowzo
f.bar = 'boo!'
puts f.bar_history.inspect


g = Foo.new
g.bar = 42
puts g.bar_history.inspect

