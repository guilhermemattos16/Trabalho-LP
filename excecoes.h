// Biblioteca de tratamento de excecoes
#include <iostream> 
#include <string>       
#include <exception>    /* bad_alloc, bad_cast, bad_exception e etc...  */  
#include <stdexcept>     /* length_error, ranger_error, overflow_error, out_of_range e etc...  */  
using namespace std;


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
          return true;
        }
        else
          return false;
     } // final do bloco TRY     
     catch (excecoes::erro){                      
          Mensagem("Erro de Divis�o por Zero!\n");
     }
}

template <class T> bool excecoes<T>::isNegativeSQR(T numero){ 
 try {       
        if (numero < 0){ 
          throw (erro());            
          return true;
        }
        else
          return false;
     } // final do bloco TRY     
     catch (excecoes::erro){                      
          Mensagem("Erro de tentativa de raiz quadrada negativa!\n");
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
          return true;
        }
        else
          return false;
     } // final do bloco TRY     
     catch (excecoes::erro){                      
          Mensagem("Erro, nao e um numero\n");
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
          return true;
        }
        else
          return false;
     } // final do bloco TRY     
     catch (excecoes::erro){                      
          Mensagem("Erro, nao e uma palavra\n");
     }
}

template <class T> bool excecoes<T>::isDate (T dia, T mes, T ano){ 
 try { 
        bool valor = true;
        if(dia <= 0 || dia >31 || mes <= 0 || mes > 12 || ano <= 1900 || ano > 2100){
          valor = false;
        }    
        if (!valor){ 
          throw (erro());            
          return true;
        }
        else
          return false;
     } // final do bloco TRY     
     catch (excecoes::erro){                      
          Mensagem("Erro, data invalida\n");
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
  }
  catch(bad_alloc erro){
    cout << "Erro de alocacao\n" << erro.what();
  }
  return ptr;
}