#include "excecoes.h"
#include <math.h>
using namespace std;

excecoes <int> ObjetoInt;
excecoes <float> ObjetoFloat;
excecoes <bool> ObjetoBool;
excecoes <string> ObjetoString;

int menu(){
	int opcao;
	cout << "1-divisao\n2-raiz quadrada\n3-E numero\n4-E char\n5-data\n6-posicao valida\n7-alocacao\n8-sair\n";
	cin >> opcao;
	return opcao;
}

int main(){
	int opcao;
	string numero, palavra;
	do{
		opcao = menu();
		switch(opcao){
			case 1:
				int numerador, denominador;
				cout << "Digite o numerador: ";
				cin >> numerador;
				cout << "Digite o denominador: ";
				cin >> denominador;

				if(!ObjetoInt.isDivByZero(denominador)){
					float resultado = numerador / denominador;
					cout << "O resultado da divisao é: "<< resultado;
				}
				break;
			case 2:
				float numeroRaiz;
				cout << "Digite o numero: ";
				cin >> numeroRaiz;
				if(!ObjetoFloat.isNegativeSQR(numeroRaiz)){
					cout << "A raiz de " << numeroRaiz<< " = " << sqrt(numeroRaiz) << "\n";
				}
				break;
			case 3:
				
				cout << "Digite: ";
				cin >> numero;
				if(!ObjetoString.isNumber(numero)){
					cout << "E um numero\n";
				}
				break;
			case 4:
				cout << "Digite a palavra: ";
				cin.ignore();
    			getline( cin, palavra);
				if(!ObjetoString.isWord(palavra)){
					cout << "E uma palavra\n";
				}
				break;
			case 5:
				int dia, mes, ano;
				cout << "Digite o dia, mes e ano separados por espaço: ";
				cin >> dia >> mes >> ano;
				if(!ObjetoInt.isDate(dia, mes, ano)){
					cout << "E uma data valida\n";
				}
				break;
			case 6:
				break;
			case 7:
				break;
		}
	}while(opcao >=1 && opcao <= 7);
	
	

	return 0;
}