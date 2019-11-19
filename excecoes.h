#include <bits/stdc++.h>
#include <iostream>
#include <string>
#include <exception>    /* bad_alloc, bad_cast, bad_exception e etc...  */
#include <stdexcept>     /* length_error, ranger_error, overflow_error, out_of_range e etc...  */
#include <locale.h>
#include <fstream>
#include <ctime>
#include <time.h>
#include <math.h>
using namespace std;

fstream outFile("LogErros.dat",ios::in | ios::out | ios::app);

void escreveData (){
  		// DATA E TEMPO SAO BASEADOS NO SISTEMA
		   time_t now = time(0);
		   tm *ltm = localtime(&now);

		   outFile <<"Data: " << ltm->tm_mday << "/" << 1 + ltm->tm_mon <<"/"<<1900 + ltm->tm_year<<endl;
		   outFile.precision(2);
		   outFile << "Horario: "<< ltm->tm_hour << ":";
		   outFile << ltm->tm_min << ":";
		   outFile << ltm->tm_sec << endl << endl;

}

template <class T> class excecoes {
  public:
      class erro{ }; /*classe para refer�ncia na ocorrencia de erro. Utiliza-se construtor por oculta��o*/
      void Mensagem(string msg); /*Permite passar por par�metro qualquer mensagem e exibi-la para o usu�rio*/
      bool isDivByZero(T numero); /*retorna true se ocorreu uma tentativa de divis�o por zero*/
      bool isNegativeSQR(T numero); /*retorna true se houver tentativa de raiz negativa */
      bool isNumber (T numero); /*retorna true se o valor valor passado possui apenas n�meros */
      bool isWord (T palavra); /*retorna true se o valor valor passado possui apenas char */
      bool isDate (T dia, T mes, T ano); /*returna true se for uma data v�lida */
      bool isIndexInvalid (T vetor[]); /*returna true se tentar acessar uma posi��o de um vetor inexistente */
      T *alocation(T *ptr, int tamanho); /*Caso n�o ocorra um erro de aloca��o de mem�ria devolve um ponteriro alocado */
      /*....demais m�todos para tratamento de erros */
  private:
      T item; /*Atributo privado que futuramente pode ser utilizado*/
};

template <class T> void excecoes<T>:: Mensagem(string msg) /*implementa��o do m�todo mensagem */
{
      cout << msg << endl;
}
///////////////////////////////////////////////////////////////////
template <class T> bool excecoes<T>::isDivByZero(T numero){ /*implementa��o da verifica��o de tentativa de divisao por zero */
 try {
        if (numero==0){
          throw (erro());
        }
        else
          return false;
     } // final do bloco TRY
     catch (excecoes::erro){
        Mensagem("Erro de Divisao por Zero!\n");
        outFile << "Codigo: 101" << endl;
        escreveData(); //Escreve Dia/Mes/Ano e Hora:Minuto:Segundo no arquivo.dat
        outFile << "Opcao escolhida no MENU: 1" <<endl;
        outFile << "Erro: isDivByZero"<< endl; //Escreve no arquivo
        outFile << "Mensagem: Erro de Divisao por zero" << endl;
        return true;
     }
}

template <class T> bool excecoes<T>::isNegativeSQR(T numero){
 try {
        if (numero < 0){
          throw (erro());

        }
        else
          return false;
     } // final do bloco TRY
     catch (excecoes::erro){
          Mensagem("Erro de tentativa de calculo de raiz quadrada negativa!\n");
          outFile << "Codigo: 102" << endl;
          escreveData(); //Escreve Dia/Mes/Ano e Hora:Minuto:Segundo no arquivo.dat
          outFile << "Opcao escolhida no MENU: 2" <<endl;
          outFile << "Erro: isNegativeSQR"<< endl; //Escreve no arquivo
          outFile << "Mensagem: Tentativa de calculo de raiz quadrada negativa!" << endl;
          return true;
     }
}

template <class T> bool excecoes<T>::isNumber(T numero){
 try {
        bool valor = true;
        int ponto = 0;
        for(int i = 0; i < numero.size(); i++){
          if(numero[i] == '.'){
            ponto ++;
          }
          if(!isdigit(numero[i]) && ponto > 1){
            valor = false;
            break;
          }
        }
        if (!valor){
          throw (erro());

        }
        else
          return false;
     } // final do bloco TRY
     catch (excecoes::erro){
          Mensagem("Erro, nao e um numero\n");
          outFile << "Codigo: 103" << endl;
          escreveData(); //Escreve Dia/Mes/Ano e Hora:Minuto:Segundo no arquivo.dat
          outFile << "Opcao escolhida no MENU: 3" <<endl;
          outFile << "Erro: isNumber"<< endl; //Escreve no arquivo
          outFile << "Mensagem: Erro, nao e um numero" << endl;
          return true;
     }
}

template <class T> bool excecoes<T>::isWord (T palavra){
 try {
        bool valor = false;
        int ponto = 0;
        for(int i = 0; i < palavra.size(); i++){
          if((palavra[i] >= 'A' && palavra[i] <= 'Z') || (palavra[i] >= 'a' && palavra[i] <= 'z') || palavra[i] == ' '){
            valor = true;
          }else{
            valor = false;
            break;
          }
        }
        if (!valor){
          throw (erro());

        }
        else
          return false;
     } // final do bloco TRY
     catch (excecoes::erro){
          Mensagem("Erro, nao e uma palavra\n");
          outFile << "Codigo: 104" << endl;
          escreveData(); //Escreve Dia/Mes/Ano e Hora:Minuto:Segundo no arquivo.dat
          outFile << "Opcao escolhida no MENU: 4" <<endl;
          outFile << "Erro: isWord"<< endl; //Escreve no arquivo
          outFile << "Mensagem: Erro, nao e uma palavra" << endl;
          return true;
     }
}

template <class T> bool excecoes<T>::isDate (T dia, T mes, T ano){
 try {
        if (mes>12){
            throw(erro());

        }else if((mes==1 || mes==3 || mes==5 || mes==7 || mes==8 || mes==10 || 12) && (dia>31 || dia<0)){
            throw(erro());

        }else if ((mes==4 || mes==6 || mes==9 || mes==11) && (dia>30 || dia<0)){
            throw(erro());

        }else if (mes==2 && (dia>28 || dia<0)){
            throw(erro());

        }else
            return false;
     } // final do bloco TRY
     catch (excecoes::erro){
          Mensagem("Erro, data invalida\n");
          outFile << "Codigo: 105" << endl;
          escreveData(); //Escreve Dia/Mes/Ano e Hora:Minuto:Segundo no arquivo.dat
          outFile << "Opcao escolhida no MENU: 5" <<endl;
          outFile << "Erro: isDate"<< endl; //Escreve no arquivo
          outFile << "Mensagem: Erro, data invalida" << endl;
          return true;
     }
}

// template <class T> bool excecoes<T>::isIndexInvalid (T vetor[], int tam){
//  try {
//         bool valor = true;
//         for(int i = 0; i < tam; i++){
//           if(i)
//         }
//         if (!valor){
//           throw (erro());
//           return true;
//         }
//         else
//           return false;
//      } // final do bloco TRY
//      catch (excecoes::erro){
//           Mensagem("Erro, data invalida\n");
//      }
// }

template <class T> T* excecoes<T>::alocation(T *ptr, int tamanho){
  try{
    ptr = new T[tamanho];
    if(ptr == NULL)
        throw(erro());
    return ptr;
  }
  catch(bad_alloc erro){
    cout << "Erro de alocacao\n" << erro.what();
    outFile << "Codigo: 107" << endl;
    escreveData(); //Escreve Dia/Mes/Ano e Hora:Minuto:Segundo no arquivo.dat
    outFile << "Opcao escolhida no MENU: 7" <<endl;
    outFile << "Erro: alocation"<< endl; //Escreve no arquivo
    outFile << "Mensagem: Erro de alocacao" << endl;
    return NULL;
  }
  return ptr;
}

