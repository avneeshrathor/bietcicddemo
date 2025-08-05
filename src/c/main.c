#include<stdio.h>
#include<math.h> //To test Pull Request worflow
#include<utils.h>

int main(){
    printf("Hello World!");
    //return 0;
//To test Pull Request workflow
    int result = add(3, 4);
    
    printf("\nDEBUG: result = %d\n", result);

    printf("\nDEBUG: fact of %d = %d\n", 5, fact(5));

    return result;
}