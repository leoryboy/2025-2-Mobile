import 'dart:io';
void main(){
    int renda = 60000;
    int saldo = 100000;

    if(renda >= 1400 && renda < 5000){
        print('Varejo');
    }else if(renda >= 5000 && renda < 30000){
        print('Vangogh');
    }else if(renda >= 30000 && renda < 60000){
        print('Select');
    }else if( renda >= 60000 && saldo >= 100000){
        print('Exclusive');
    }

}









    
    /*print('Informe sua idade: ');
    String? nome = stdin.readLineSync();*/

  //  int idade = 19;

/*    if(idade >= 18)
    {
        print('pode entrar na balada');
    }
        print('fim do programa');
}*/
/*   if(idade < 18)
    {
        print('fim do programa');
        return;
    }
        print('pode entrar na balada');
}*/
