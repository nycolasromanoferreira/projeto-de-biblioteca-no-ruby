require 'colorize'
require_relative 'livro'

minha_biblioteca = Biblioteca.new
livro_azul = Livro.new("Diario de um celular", "robert daves", 2016)
livro_vermelho = Livro.new("o Bob", "Jhon", 2007)
livro_preto = Livro.new("S.O.A", "Jorge Nunes", 2010)

minha_biblioteca.adicionar_livros(livro_vermelho)
minha_biblioteca.adicionar_livros(livro_preto)
minha_biblioteca.adicionar_livros(livro_azul) 


puts "seja bem vindo a nossa biblioteca digital!".colorize(:blue)

while true
  puts "---Menu pricipal---".colorize(color: :red, background: :blue)
  puts "o que você gostaria de fazer?".colorize(color: :white, background: :magenta)
  puts "1. adicionar livro".colorize(:green)
  puts "2. listar todos os livros".colorize(:yellow)
  puts "3. buscar por um livro".colorize(:blue)
  puts "4. retirar livro".colorize(:magenta)
  puts "5. sair".colorize(:red)

  opcao = gets.chomp.to_i

  if opcao == 1

   puts "qual o nome do livro?".colorize(:yellow)
    
    nome1 = gets.chomp
    puts "qual o nome do autor?".colorize(:yellow)

   autor1 = gets.chomp

   puts "qual a data de publicação?".colorize(:yellow)

   data = gets.chomp.to_i

    livro_novo = Livro.new(nome1, autor1, data)
    minha_biblioteca.adicionar_livros(livro_novo)
    puts "o #{livro_novo.titulo} foi adicionado a aua biblioteca com sucesso!".colorize(:green)

  elsif opcao == 2
   puts ""
   puts "os livros na biblioteca são:".colorize(:green)
   puts ""
   minha_biblioteca.livros_na_biblioteca

  elsif opcao == 3
   livro_digitado = minha_biblioteca.comunicacao
    procurando_livro = minha_biblioteca.procurar(livro_digitado)
    if procurando_livro == nil
      puts "---livro não encontrado---".colorize(color: :red, background: :yellow)
      
    else  
      print "o livro".colorize(:yellow) 
      print " #{procurando_livro.titulo}".colorize(:green)
      print " foi encontrado, escrito por".colorize(:yellow)
      print " #{procurando_livro.autor}".colorize(:blue)
      print ", e publicado em".colorize(:yellow)
      puts " #{procurando_livro.ano_de_publicacao}".colorize(:green)
    end

  elsif opcao == 4
    puts "digite o nome do titulo a ser removido:".colorize(:yellow)
    titulo_remocao = gets.chomp
    livro_removido = minha_biblioteca.remover_livro(titulo_remocao)

    if livro_removido
      puts "o livro #{livro_removido.titulo}, foi removido com sucesso!".colorize(:green)
    else
      puts "livro não encontrado!".colorize(:red)
    end



  elsif opcao == 5
   puts "obrigado por ter usado a biblioteca ate logo!".colorize(:blue)
   break

  else
    puts "opção invalida!".colorize(:red)
  end
end