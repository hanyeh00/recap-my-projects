/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
#include <stdio.h>
#include <iostream>
#include <math.h> /* ketabkhone floor log*/
#include <algorithm> /* ketabkhone sort*/
using namespace std;

void FindSimilarity(int arr1[], int arr2[], int m, int n)
{
    int i = 0, j = 0;
    int k=0;
    int ar[10];
    while (i < m && j < n) {
        if (arr1[i] < arr2[j])  /* agar adad aval araye aval kochektar bood 1 dune ezafe kon */
            i++;
        else if (arr2[j] < arr1[i])
            j++;
        else /* agar 2 ta addad barabar bod chap kun*/
        {  
            ar[k]=arr2[j];
            k++;
           // if (arr2[j]!=arr2[j-1])
            
               //  cout << arr2[j] << " ";
            
            i++;
            j++;
        }
    }
    for(int i=0;i<k;i++) // inja addad 1 bar chap mikone
    {
        if(ar[i]==ar[i+1])
            continue;
    
        else
            cout<<ar[i]<<" ";

    } 
       
    
    
}

int main()
{
    
int a,b;
cout<<"enter 2 numbers:";
cin>> a>>b;
int lenA=  floor (log10 (abs (a))) + 1;
int lenB=  floor (log10 (abs (b))) + 1;
int array1[lenA];
int array2[lenB];
for (int i = lenA-1; i >= 0; --i) {
    array1[i] = a % 10;
    a /= 10;
}

for (int j = lenB-1; j >= 0; --j) {
    array2[j] = b % 10;
    b /= 10;
}

sort(array1,array1+lenA); /*# be tartib mikone argham array*/
sort(array2,array2+lenB);  /*# be tartib mikone argham array*/
FindSimilarity(array1, array2, lenA, lenB);
	

    return 0;
}
