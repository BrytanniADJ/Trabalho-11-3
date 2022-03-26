programa
{
	inclua biblioteca Util --> U
	inclua biblioteca Matematica --> Mat
	inclua biblioteca Texto --> T
	inteiro qnt = 0, comprimento = 0, contas[100], conta = 0, pos = -1
	real saldo = 0.0, saldos[100], soma = 0.0
	cadeia clientes[100], cliente, confirma
	funcao inicio()
	{
		inteiro op = 0
		faca{	
			limpa()
			escreva("------------------------------------")
			escreva("\n    Bem vindo ao Banco Solutions! \n",
				"    Temos ", qnt, " clientes cadastrados. \n" )
				escreva("------------------------------------ \n")
			escreva("\n[1] = Cadastrar Cliente \t[2] = Saldo Atual\n[3] = Realizar Saque\t\t[4] = Realizar Depósito\n[5] = Cientes Cadastrados\t[0] = Sair")
			escreva("\n\nEscolha uma opção: ")
			leia(op)
			escolha(op){
			caso 0:
			limpa()
			escreva("Volte sempre!!")
			U.aguarde(2000)
			pare
			
			caso 1:
			limpa()
				cadastra_cliente()	
			pare
			
			caso 2:
				limpa()
				inteiro cod = 0
				escreva("Digite o número da conta: ")
				leia(cod)
				para (inteiro i = 0; i < 100; i++){
					busca_cliente(cod)
					se(cod == contas[pos]){
					escreva("Cliente: ", clientes[pos], "\nConta: ",cod, "\nSaldo: ", saldos[pos], "\n")
					pare
				}senao{
					escreva("Conta inválida!")
					pare
				}
				}
				escreva("\n Aguarde...")
				U.aguarde(5000)
			pare
			
			caso 3:
				limpa()
				
				real saque = 0.0
				escreva("Qual o número da conta que deseja realizar o saque? ")
				leia(conta)
				escreva("Qual o valor do saque? ")
				leia(saque)
				para (inteiro i = 0; i < 100; i++){
					busca_conta(conta)
					se(conta == contas[pos]){
						soma = 0.0
						soma += saldos[pos]
						escreva("Seu saldo é: ", saldos[pos], "\n")
						U.aguarde(2000)
							se(soma> saque){
								saldos[pos] = soma - saque
								escreva("Saque de R$ ", saque, " realizado com sucesso!\n")
								escreva("Seu saldo é R$ ", saldos[pos], "\n")
							}senao{
								escreva("Saldo insuficiente para saque no valor de R$ ", saque, "\n\n")
								U.aguarde(4000)
								
							}pare
							}senao{
							escreva("Conta informada inválida.")
							pare
					}}	
					escreva("\n Aguarde...")
					U.aguarde(4000)
					pare
					
			caso 4:
				limpa()
				real dep = 0.0
				
				escreva("Qual o número da conta que deseja realizar o depósito? ")
				leia(conta)
				para (inteiro i = 0; i < 100; i++){
					busca_conta(conta)
					se(conta == contas[pos]){
					soma = 0.0
					soma +=saldos[pos]
					escreva("Qual o valor do depósito? ")
					leia(dep)
					escreva("Confirmar depósito na conta do(a)", clientes[pos], " no valor de R$ ",
					dep, "? \n", " (S - Sim / N - Não): ")
					leia(confirma)
					confirma = T.caixa_alta(confirma)
					se(confirma == "S"){
						saldos[pos] = soma + dep
						escreva("O saldo atual é R$", saldos[pos], "\n")
						escreva("\n Aguarde...")
					pare	
					}senao{
						escreva("\nCliente não cadastrado.")
						pare}
						}senao{
						escreva("\nConta inválida.\n")
						pare
					}
					}
					pare
					
			caso 5:
			limpa()
			lista_clientes()
			escreva("\nPara sair do relatório Digite (S - Sim / N - Não): ")
			leia(confirma)
			confirma = T.caixa_alta(confirma)
			enquanto(confirma !="S"){
				limpa()
				lista_clientes()
				escreva("\nDeseja sair do relatório? (S - Sim / N - Não): ")
				leia(confirma)
				confirma = T.caixa_alta(confirma)
			}pare
			caso contrario:
				escreva("Opção inválida. \n")
			}
			
		}enquanto(op !=0)

	}
		funcao vazio cadastra_cliente(){
			cadeia continuar =" ", senha
			inteiro tam_senha = 0

			para (inteiro i = 0; i < 100; i++){
				qnt++
				escreva("Digite o nome do novo(a) cliente: ")
				leia(cliente)
				cliente = T.caixa_alta(cliente)
				clientes[i] = cliente
				escreva("Digite uma senha númerica de 6 dígitos para o(a) cliente ", cliente, ": ")
				leia(senha)
				 tam_senha = T.numero_caracteres(senha)
					se(tam_senha == 6){
						escreva("Senha cadastrada. \n")
					}
					senao{
						escreva("Digite um senha com seis digitos: ")
					leia(senha)	
					}
				escreva("Informe o saldo inicial do(a) cliente ", cliente, ": ")
				leia(saldo)
				saldos[i] = saldo
				escreva("Confirmar cadastro do(a) cliente ", cliente, " com saldo inicial de R$ ",
				saldo, "? \n", " (S - Sim / N - Não): ")
				leia(confirma)
				confirma = T.caixa_alta(confirma)
				se(confirma == "S"){
					 conta= U.sorteia(1000,9999)
					 contas[i] = conta
					 se(conta == contas[i]){
					 	conta= U.sorteia(1000,9999)
					 	contas[i] = conta
					 }
					escreva("Número da conta do(a) cliente ", cliente, " é: ", conta, "\n")
					escreva("Deseja cadastrar novo cliente? (S - Sim / N - Não) " )
					leia(confirma)
					confirma = T.caixa_alta(confirma)
						 se(confirma == "N"){
					pare
					
				 }	limpa()
			}
			}
		} funcao  inteiro busca_cliente(inteiro cod){
		
			para(inteiro i = 0; i < 100; i++){
			se(contas[i] == cod){
			    pos = i
				pare 
			}
			}
		retorne pos
		} 

		
		funcao  inteiro busca_conta(inteiro cont){
		
			para(inteiro i = 0; i < conta; i++){
			se(contas[i] == conta){
			    pos = i
				pare
			}
		}
		retorne pos
		}

				
		funcao lista_clientes(){
					escreva("     Banco Solutions \n")
					escreva("************************* \n")
					escreva("****Lista de clientes**** \n\n")
					escreva("Contas \t\tClientes \n")
					para(inteiro i =0; i < contas[i]; i++){
						escreva(contas[i], "\t\t", clientes[i], "\n")
						
					}
				}
			}
