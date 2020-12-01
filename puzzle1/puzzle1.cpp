#include <fstream>
#include <iostream>

int main() {
    std::ifstream f;

    f.open("input");
    int num;
    int arr[200];
    int i, j = 0;
    int sum;
    while(f >> num){
      arr[i] = num;
      i++;
    }
    f.close();
    
    for(i = 0; i < 200; i++){
      for(j = i + 1; j < 200; j++){
        sum = arr[i] + arr[j];
        if(sum == 2020){
          printf("arr[%d] is %d, arr[%d] is %d.\nSolution: %d\n", i, arr[i], j, arr[j], arr[i]*arr[j]);
          return 0;
        }
      }
    }
    printf("No solution found.\n");
    return 0;
}
