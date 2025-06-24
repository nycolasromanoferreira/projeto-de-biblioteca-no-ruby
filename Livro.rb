class Livro
 attr_reader :titulo, :autor, :ano_de_publicacao

  def initialize(titulo, autor, ano_de_publicacao)
    @titulo = titulo
   @autor = autor 
    @ano_de_publicacao = ano_de_publicacao
    end
    
  
end


class Biblioteca

  def initialize
    @acervo = []
    end

    def adicionar_livros(livro)
   @acervo.push(livro)
  end
    
  def livros_na_biblioteca

    if @acervo.empty?
        puts "a biblioteca não possui livros"

    else
      @acervo.each do |livro|
       print "titulo:".colorize(:yellow) 
       puts " #{livro.titulo}".colorize(:blue)
       print "autor:".colorize(:yellow) 
       puts " #{livro.autor}".colorize(:blue)
       print "ano de publicação:".colorize(:yellow)
       puts " #{livro.ano_de_publicacao}".colorize(:blue)
       puts ""
      end

    end

  end

  def comunicacao

    puts "qual livro voce procura?".colorize(:yellow)
    digite_o_livro = gets.chomp

  end

  def procurar(livro_procurado)

    @acervo.each do |nome|

      if nome.titulo == livro_procurado
       return nome
      end
    end
    return nil
  end



  def remover_livro(titulo_para_remover)
    livro_encontrado = procurar(titulo_para_remover)

    if livro_encontrado != nil
      @acervo.delete(livro_encontrado)
      return livro_encontrado
    else
      return nil
    end
  end





end

minha_biblioteca = Biblioteca.new