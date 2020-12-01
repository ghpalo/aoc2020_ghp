#include <fstream>
#include <iostream>

int main() {
    std::ifstream f;

    f.open("input");
    int num;
    int arr[200];
    int i, j, k = 0;
    int sum;
    while(f >> num){
      arr[i] = num;
      i++;
    }
    f.close();

    for(i = 0; i < 200; i++){
      for(j = i + 1; j < 200; j++){
        for(k = j + 1; k < 200; k++){
          sum = arr[i] + arr[j] + arr[k];
          if(sum == 2020){
            printf("arr[%d] is %d, arr[%d] is %d, arr[%d] i %d.\nSolution: %d\n", i, arr[i], j, arr[j], k, arr[k], arr[i]*arr[j]*arr[k]);
            return 0;
          }
        }
      }
    }
    printf("No solution found.\n");
    return 0;
}
