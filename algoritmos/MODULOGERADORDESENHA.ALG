Algoritmo "ModuloGeradorDeSenha"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/05/2026
Var
   textoTemporario, tipoDeSenha, caracteresPermitidos : caracter
   senhas : vetor [0..9] de caracter
   entradaCorreta : logico
   contador, indiceSenha, tamanhoCaracteresPermitidos : inteiro
Inicio
   caracteresPermitidos <- "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@!#"
   tamanhoCaracteresPermitidos <- Compr(caracteresPermitidos)
   entradaCorreta <- falso
   
   enquanto nao(entradacorreta) faca
       escreval("Insira o tipo da senha que deseja gerar:")
       escreva("[A]luno, [P]rofessor, [F]uncionario> ")
       leia(tipoDeSenha)
       
       se (tipoDeSenha = "P") ou (tipoDeSenha = "A") ou (tipoDeSenha = "F") entao
          entradacorreta <- verdadeiro
       senao
          escreval("Escolha Incorreta!")
          escreval()
       fimse
   fimenquanto
   
   para indiceSenha de 0 ate 9 faca
      escolha tipoDeSenha
         caso "P"
              textoTemporario <- "P"
         caso "A"
              textoTemporario <- "A"
         caso "F"
              textoTemporario <- "F"
      fimescolha
        para contador de 0 ate 6 faca
             textoTemporario <- textoTemporario + Copia(caracteresPermitidos, randi(tamanhoCaracteresPermitidos) + 1, 1)
        fimpara
        escreval("Gerado a senha: ", textoTemporario)
        senhas[indiceSenha] <- textoTemporario
   fimpara
   

   escreval("=== SENHAS ===")
   para indiceSenha de 0 ate 9 faca
      escreval("   ",senhas[indiceSenha])
   fimpara
   escreval("==============")


Fimalgoritmo
