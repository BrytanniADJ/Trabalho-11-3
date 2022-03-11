programa
{
	inclua biblioteca Util
	
	inteiro esta = 0, num[3], nume, saque, dep, conta, saldo[3]
	cadeia login[3], senha[3], sem
	
	funcao inicio()
	{
		para (inteiro i = 0; i < 100; i++){
		escreva("\n\nBem vindo/a ao banco WWW.SOLUTIONS \n\n")
		escreva("Digite a opção que deseja selecionar: \n(1) = Cadastrar Cliente\t(2) = Ver Saldo\n(3) = Realizar Saque\t(4) = Realizar Depósito\t")
		escreva("\n(5) = Listar Clientes")
		leia(esta)
		limpa()

		se(esta == 1){ //inicio etapa 1
			escreva("Digite o nome do novo Cliente:    ")
			leia(login[i])
			escreva("Digite a senha para o nome cliente ",login[i],":    ")
			leia(senha[i])
			escreva("Digite o saldo inicial para o cliente ",login[i],":    \n")
			leia(saldo[i])

			num[i] = Util.sorteia(11111, 99999)
						
			escreva("Nome cadastrado:  [",login[i],"]\n")
			escreva("Senha cadastrada:  [",senha[i],"]\n")
			escreva("Número da conta:  [",num[i],"]\n") //fim etapa 1
			}
			
	 		senao se(esta == 2){ //inicio etapa 2
			escreva("Digite o número da conta:    ")
			leia(nume)
			escreva("Digite a senha da conta:    ")
			leia(sem)
			se(nume == num[i] e sem == senha[i]){
				escreva("Cliente: [",login[i],"]\t")
				escreva("Saldo atual: [",saldo[i],"]")}
				senao{
					escreva("Número do usuário ou senha Invalidos") //fim etapa 2
			}}
			
		senao se(esta == 3){
			escreva("Digite o número da conta que deseja realizar\no saque:    ") //inicio etapa 3
			leia(nume)
			se(nume != num[i]){
				escreva("Numero de conta invalido\n\n")
			}
			senao se(nume == num[i]){
				escreva("Digite a quantidade que deseja sacar:    ")
				leia(saque)
				se(saque < saldo[i]){
					escreva("Saldo insuficiente\n\n")
				}
				senao se(saque >= saldo[i]){
					saldo[i] = saldo[i] - saque
					escreva("Você sacou: [R$",saque,",] saldo atual: [R$",saldo[i],"]") //fim etapa 3
			}}}
			
		senao se(esta == 4){
			escreva("Digite a quantidade que deseja depositar:    ") //inicio etapa 4
			leia(dep)
			se(dep < saldo[i]){
				escreva("Saldo insuficiente\n\n")
			}
			senao se(dep >= saldo[i]){
				escreva("Digite o número da conta que deseja depositar:    ")
				leia(conta)
				se(conta != num[i]){
					escreva("\n[Número de conta invalido]")
				}
				senao se(conta == num[i]){
					saldo[i] = saldo[i] - dep
					escreva("[R$",conta,"] foi tranferido de sua conta pra conta de [",login[i],"]") //fim etapa 4
				}}}
					
		senao se(esta == 5){
			escreva("[Clientes cadastrados]\n")
			escreva("[Clientes]\t[Senha]\t\t[Número de conta]\n")
			para (i = 0; i < 3; i++){
			escreva(login[i],"\t\t",senha[i],"\t\t",num[i],"\n")
			}}
			
		}
}}
