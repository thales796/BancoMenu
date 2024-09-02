programa {
  funcao inicio() {
    
    real cod = 9 , saque, deposito, extrato, saldo= 0, valorInv = 0, mesesInv= 0, rendimentoInv = 0 


    enquanto(cod != 0){

    
      escreva("--------Menu-------- \n")
      escreva("1.Saque \n")
      escreva("2.Deposito \n")
      escreva("3.Extrato \n")
      escreva("4.Saldo - R$" + saldo + "\n")
      escreva("5.Investimentos \n")
      escreva("0.Sair \n")
      escreva("")
      leia(cod)
      
      se(cod == 1){
        limpa()

        escreva("Qual o valor que deseja sacar: \n")
        leia(saque)
        se(saque < saldo e saque > 0){
        escreva("Saque realizado com sucesso \n")
        saldo= saldo - saque
        }
       
        senao{
          escreva("Saldo insuficiente. \n")
        }
      }
      senao se(cod == 2){
        limpa()

        escreva("Qual o valor do deposito: \n")
        leia(deposito)
        escreva("Deposito realizado com sucesso. \n")
        saldo= saldo + deposito
      }
      senao se(cod == 3){
        limpa()

        escreva("Você depositou R$" + deposito + " e sacou R$" + saque + ". \n")
      }
      senao se(cod == 4){
        limpa()

        escreva("Seu saldo total é de: R$" + saldo + "\n")
      }
      senao se(cod == 5){
        limpa()
        escreva("Qual o valor do investimento: ")
        leia(valorInv)
        escreva("Deseja manter o investimento por quantos meses: ")
        leia(mesesInv)
        se(valorInv <= saldo){
         saldo = saldo - valorInv
         para(inteiro contador = 1 ; contador <= mesesInv ; contador++ ){
          rendimentoInv = valorInv * 1.02
          valorInv = rendimentoInv
         }
         escreva(mesesInv + "meses se passaram! \n")
         escreva("O valor do rendimento é de: R$" + valorInv + "\n")
         saldo = saldo + valorInv
        }
        senao{
          escreva("Não foi possivel realizar o investimento. Saldo insuficiente. \n")
        }
      }
    }
    
  }
}
