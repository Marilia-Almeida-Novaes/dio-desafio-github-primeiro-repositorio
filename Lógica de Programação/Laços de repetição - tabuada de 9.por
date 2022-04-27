programa
{
	
	funcao inicio()
	{
		inteiro contador,limite,resultado,tabuada

		contador = 0
		limite = 10
		
		escreva("Qual taboada você quer que eu resolva")
		leia (tabuada)

		faca{

			resultado = tabuada * contador
			escreva(tabuada + " X " + contador + " = " + resultado + "\n")
			contador++ // nese caso posso usar também contador=contador+1 ou contador=contador+2 pra pular de dois em dois
			
		}enquanto ( contador<=limite)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 450; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */