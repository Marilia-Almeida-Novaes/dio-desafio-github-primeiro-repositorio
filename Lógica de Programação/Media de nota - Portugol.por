//Função do Algoritimo: Calcular a média aritimética
//Altor: Marilia Almeida

programa
{
	
	funcao inicio()
	{
		 real nota1,nota2,nota3,nota4,media
		 cadeia aluno

		 escreva("Digite o nome do aluno: ")
		 leia(aluno)
		 escreva("Digite nota 1: ")
		 leia(nota1)
		 escreva("Digite nota 2: ")
		 leia(nota2)
		 escreva("Digite nota 3: ")
		 leia(nota3)
		 escreva("Digite nota 4: ")
		 leia(nota4)

		 media = (nota1+nota2+nota3+nota4)/4

		 escreva("o aluno: " + aluno +"\n" +  "obteve a média: " + media)
		//Verifica se nota é maior ou igual a 7
	se(media>=7) {
		escreva("\n" + " Parabéns! Você foi aprovado.")
		
		
	}
	//Caso a média seja menor que 7
	 senao{
			escreva("\n" + "Você foi reprovado")
	 }
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 182; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */