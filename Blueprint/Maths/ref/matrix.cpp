//
//  matrix.cpp
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-21.
//  Copyright © 2020 SP. All rights reserved.
//

#include <stdio.h>
#include <iostream> //necessary?
#include <vector>
//#include "lib/eigen-eigen-323c052e1731/eigen-eigen-323c052e1731/Eigen/Dense"

enum Alliance{
    RED, BLUE
};

enum Position{
    RED1, RED2, RED3, BLUE1, BLUE2, BLUE3
};

enum DrivePerformance{
    TERRIBLE, BAD, OK, GOOD, EXCELLENT
};
/*
enum BalancingAbility{
    NONE, POOR, OK, GOOD, EXCELLENT
};*/

enum Height{
    
};

int nbTeam;
int nbMatch;
std::vector<int> team;
std::vector<int> score;
std::vector<int> foul;

//robot characteristics
std::vector<double> weight;
std::vector<bool> height;

//robot abilities
std::vector<int> drivePerformance;//1 to 10
std::vector<int> balancingAbility;//1 to 10


/*
class MatrixOp{
public:
    std::vector<int> teams;//vector for dynamic-sized array
public:
    //OPR
    
    
private:
    //private methods are only used int the OPR/DPR calculations
    //1. transpose (Int & Double)
    //2. multiply (Int & Double)
    //3. inverse (Double)
    
    //TRANSPOSE METHODS
    static int** mTranspose(int** matrix){
        //new array with inverted columns/rows
        int** transpose;
        transpose[sizeof(matrix[0])/sizeof(*matrix[0])][sizeof(matrix)/sizeof(*matrix)];
        
        for(int i=0; i<(sizeof(matrix)/sizeof(*matrix)); i++){
            for(int j=0; j<(sizeof(matrix[0])/sizeof(*matrix[0])); j++){
                transpose[i][j]=matrix[j][i];
            }
        }
          
        return transpose;
    }
    
    static double** mTranspose(double** matrix){
        //new array with inverted columns/rows
        double** transpose;
        transpose[sizeof(matrix[0])/sizeof(*matrix[0])][sizeof(matrix)/sizeof(*matrix)];
        
        for(int i=0; i<(sizeof(matrix)/sizeof(*matrix)); i++){
            for(int j=0; j<(sizeof(matrix[0])/sizeof(*matrix[0])); j++){
                transpose[i][j]=matrix[j][i];
            }
        }
          
        return transpose;
    }

    
    //MULTIPLY METHODS
    
     static int** mMultiply(int** matrixA, int** matrixB){

         int** product;
         product[(sizeof(matrixA)/sizeof(*matrixA))][(sizeof(matrixB)/sizeof(*matrixB))];

         //assumes: matrixA[0].length == matrixB.length
             //rows of final matrix
             for(int i = 0; i < (sizeof(product)/sizeof(*product)); i++) {
                 for (int j = 0; j < (sizeof(product[0])/sizeof(*product[0])); j++) {
                     for (int k = 0; k < (sizeof(matrixA[0])/sizeof(*matrixA[0])); k++) {
                         product[i][j] += matrixA[i][k] * matrixB[k][j];
                     }
                 }
             }

         return product;
     }
    
    static double** mMultiply(double** matrixA, double** matrixB){

        double** product;
        product[(sizeof(matrixA)/sizeof(*matrixA))][(sizeof(matrixB)/sizeof(*matrixB))];

        //assumes: matrixA[0].length == matrixB.length
            //rows of final matrix
            for(int i = 0; i < (sizeof(product)/sizeof(*product)); i++) {
                for (int j = 0; j < (sizeof(product[0])/sizeof(*product[0])); j++) {
                    for (int k = 0; k < (sizeof(matrixA[0])/sizeof(*matrixA[0])); k++) {
                        product[i][j] += matrixA[i][k] * matrixB[k][j];
                    }
                }
            }
        
        return product;
    }
    
    //INVERSE METHODS
    //inverse (requires the matrix to be a square matrix)
    
    //FUCK MEEEEE
    
    //method to make array of matches played
    
};
*/
