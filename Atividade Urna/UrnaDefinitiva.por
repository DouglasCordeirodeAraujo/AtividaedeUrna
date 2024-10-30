programa
{

	funcao inicio()
	{
		//Declarando às Variaveis e Vetores
		cadeia candidato [4]
		cadeia numero [4]
		cadeia opcao
		cadeia branco = "branco"
		inteiro maiorVoto, votoValido, porcentagem
		inteiro votoCandidato1 = 0, votoCandidato2 = 0, votoCandidato3 = 0, votoCandidato4 = 0, qtdVotos, contador = 0, contar = 0
		
		//Tela Cadastro de Candidatos
		escreva("---------------CADASTRO DE CANDIDATOS----------------\n")
		//Recebendo os Nomes dos Candidatos e seu respectivo Número e Armazenando em Dois Vetores do tipo Cadeia
		para(inteiro cont = 0; cont < 4; cont++)
		{
			escreva("* Digite o Nome do ", cont + 1,"º Candidato: ")
			leia(candidato[cont])
			escreva("* Digite o número do ", cont + 1,"º Candidado: ")
			leia(numero[cont])
			escreva("\n")
		}
		escreva("-----------------------------------------------------")
		escreva("\n")
		//Tela de Candidatos Cadastrados
		escreva("\n---------------CANDIDATOS CADASTRADOS!---------------")
		//Enquanto o vetor for menor que 4 o trecho do código entre {} vai ser executado
		para(inteiro i = 0; i < 4; i++)
		{
			escreva("\n",i + 1,"º Candidato: ", candidato[i])
			escreva("\nNúmero do Candidato: ", numero[i])
			escreva("\n-----------------------------------------------------")
		}
		escreva("\n")
		// O código dentro das {} do comando faca vai ser executado
		faca
		{	//Tela de votação que aparece para o Eleitor
			escreva("\n------------------SISTEMA DE VOTAÇÃO-----------------\n")
			escreva("ESCOLHA UMA OPCÃO: ")
			para(inteiro j = 0; j < 4; j++)
			{
				escreva("\nCandidato(a): ",candidato[j]," Digite: ",numero[j])
			}
			escreva("\nBranco Digite: ",branco)
			escreva("\nNulo Digite: ","\n")
			escreva("DIGITE SEU VOTO: ")
			leia(opcao)//O eleitor tera que digitar o seu voto
			escreva("-----------------------------------------------------\n")
			//O voto do eleito vai passar por uma condição senaose
			//Que terá dois resultados ou Contabiliza o voto ou escreve Opção Inválida
			se(opcao == numero[0])
				votoCandidato1 = votoCandidato1 + 1
			senao
				se(opcao == numero[1])
					votoCandidato2 = votoCandidato2 + 1
				senao
					se(opcao == numero[2])
						votoCandidato3 = votoCandidato3 + 1
					senao
						se(opcao == numero[3])
							votoCandidato4 = votoCandidato4 + 1
						senao
							se(opcao == branco)
								contador = contador + 1
							senao
								se(opcao != numero[0] e opcao != numero[1] e opcao != numero[2] e opcao != numero[3] e opcao != branco e opcao != "xx")
									contar = contar + 1
								senao{}
			//Calculando Total de votos e armazenando na variável qtdVotos					
			qtdVotos = votoCandidato1 + votoCandidato2 + votoCandidato3 + votoCandidato4 + contador + contar
			
			votoValido = votoCandidato1 + votoCandidato2 + votoCandidato3 + votoCandidato4
			
			porcentagem = (votoValido * 50 / 100)
		//enquanto a opção digitada for diferente de xx o comando faca{} será executado
		}enquanto(opcao != "xx")
		//Se o opçao for xx a votação será encerrada e o Boletim de Urna será emitido.
		escreva("                  VOTAÇÃO ENCERRADA                    \n")
		//Tela de Boletim de Urna
		escreva("\n--------------------BOLETIM DE URNA------------------\n")
		escreva("Quantidade de votos do candidato ",candidato[0],": ",votoCandidato1)
		escreva("\nQuantidade de votos do candidato ",candidato[1],": ",votoCandidato2)
		escreva("\nQuantidade de votos do candidato ", candidato[2],": ",votoCandidato3)
		escreva("\nQuantidade de votos do candidato ", candidato[3],": ",votoCandidato4)
		escreva("\nQuantidade de votos branco: ",contador)
		escreva("\nQuantidade de votos nulos: ",contar)
		escreva("\nQuantidade Total de Votos: ",qtdVotos)
		escreva("\nQuantidade Total de Votos Válidos: ", votoValido)

		maiorVoto = votoCandidato1

		se(votoCandidato2 > maiorVoto e votoCandidato2 >= porcentagem)
		{
			escreva("\nVencedor: ",candidato[1])
			escreva("\nNÃO HAVERÁ SEGUNDO TURNO")
		}senao
			se(votoCandidato3 > maiorVoto e votoCandidato3 >= porcentagem)
			{
				escreva("\nVencedor: ",candidato[2])
				escreva("\nNÃO HAVERÁ SEGUNDO TURNO")
			}senao
				se(votoCandidato4 > maiorVoto e votoCandidato4 >= porcentagem)
				{
					escreva("\nVencedor: ",candidato[3])
					escreva("\nNÃO HAVERÁ SEGUNDO TURNO")
				}senao
					se(votoCandidato1 >= maiorVoto e votoCandidato1 >= porcentagem)
					{
						escreva("\nVencedor: ",candidato[0])
						escreva("\nNÃO HAVERÁ SEGUNDO TURNO")
					}senao
					

		se(votoCandidato2 > maiorVoto e votoCandidato2 > votoCandidato3 e votoCandidato2 > votoCandidato4)
		{
			se(votoCandidato1 > votoCandidato3 e votoCandidato1 > votoCandidato4)
				escreva("\nSEGUNDO TURNO: ",candidato[1]," e ",candidato[0])
			senao
				se(votoCandidato3 > votoCandidato1 e votoCandidato3 > votoCandidato4)
					escreva("\nSEGUNDO TURNO: ",candidato[1]," e ",candidato[2])
				senao
					se(votoCandidato4 > votoCandidato1 e votoCandidato4 > votoCandidato3)
					 	escreva("\nSEGUNDO TURNO: ",candidato[1]," e ",candidato[3])
					
		}senao
			se(votoCandidato3 > maiorVoto e votoCandidato3 > votoCandidato2 e votoCandidato3 > votoCandidato4)
			{
				se(votoCandidato1 > votoCandidato2 e votoCandidato1 > votoCandidato4)
					escreva("\nSEGUNDO TURNO: ",candidato[2]," e ",candidato[0])
				senao
					se(votoCandidato2 > votoCandidato1 e votoCandidato2 > votoCandidato4)
						escreva("\nSEGUNDO TURNO: ",candidato[2]," e ",candidato[1])
					senao
						se(votoCandidato4 > votoCandidato1 e votoCandidato4 > votoCandidato2)
					 		escreva("\nSEGUNDO TURNO: ",candidato[2]," e ",candidato[3])
					 		
			}senao
				se(votoCandidato4 > maiorVoto e votoCandidato4 > votoCandidato2 e votoCandidato4 > votoCandidato3)
				{
					se(votoCandidato1 > votoCandidato2 e votoCandidato1 > votoCandidato3)
						escreva("\nSEGUNDO TURNO: ",candidato[3]," e ",candidato[0])
					senao
						se(votoCandidato2 > votoCandidato1 e votoCandidato2 > votoCandidato3)
							escreva("\nSEGUNDO TURNO: ",candidato[3]," e ",candidato[1])
						senao
							se(votoCandidato3 > votoCandidato1 e votoCandidato3 > votoCandidato2)
					 			escreva("\nSEGUNDO TURNO: ",candidato[3]," e ",candidato[2])
					 			
				}senao
					se(votoCandidato1 >= maiorVoto e votoCandidato1 > votoCandidato2 e votoCandidato1 > votoCandidato3 e votoCandidato1 > votoCandidato4)
					{
						se(votoCandidato2 > votoCandidato3 e votoCandidato2 > votoCandidato4)
							escreva("\nSEGUNDO TURNO: ",candidato[0]," e ",candidato[1])
						senao
							se(votoCandidato3 > votoCandidato2 e votoCandidato3 > votoCandidato4)
								escreva("\nSEGUNDO TURNO: ",candidato[0]," e ",candidato[2])
							senao
								se(votoCandidato4 > votoCandidato2 e votoCandidato4 > votoCandidato3)
					 				escreva("\nSEGUNDO TURNO: ",candidato[0]," e ",candidato[3])
					}senao
			
		
		se(votoCandidato1 == votoCandidato2 e votoCandidato2 == votoCandidato3 e votoCandidato3 == votoCandidato4)
			escreva("\nSEGUNDO TURNO: ",candidato[0],", ",candidato[1],", ",candidato[2],", ",candidato[3])
		senao		
			se(votoCandidato1 == votoCandidato2)
			 	escreva("\nSEGUNDO TURNO: ",candidato[0]," e ",candidato[1])
			senao
				se(votoCandidato1 == votoCandidato3)
					escreva("\nSEGUNDO TURNO: ",candidato[0]," e ",candidato[2])
				senao
					se(votoCandidato1 == votoCandidato4)
						escreva("\nSEGUNDO TURNO: ",candidato[0]," e ",candidato[3])
					senao
						se(votoCandidato2 == votoCandidato3)
							escreva("\nSEGUNDO TURNO: ",candidato[1]," e ",candidato[2])
						senao
							se(votoCandidato2 == votoCandidato4)
								escreva("\nSEGUNDO TURNO: ",candidato[1]," e ",candidato[3])
							senao
								se(votoCandidato3 == votoCandidato4)
									escreva("\nSEGUNDO TURNO: ",candidato[2]," e ",candidato[3])
								senao{}

		escreva("\n-----------------------------------------------------")						
		
	}
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 127; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */