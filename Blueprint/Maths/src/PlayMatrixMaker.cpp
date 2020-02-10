//
//  PlayMatrixMaker.cpp
//  Blueprint
//
//  Created by Samuel Proulx on 2020-02-09.
//  Copyright © 2020 SP. All rights reserved.
//

/**
 * Program converts if a team has played into a vector (must be recalculated after every match)
 * 
*/

/**
 * 
 * vector<[row<short>, column<short>, value<float>]>
*/

#include <iostream>
#include <vector>
#include <math.h>

//node structure
struct Node{
    unsigned short row_; //matchId with :: red ? row even : row odd
    unsigned short column_; //team in numerical order
    unsigned short played_ = 1; //1 because if did not played not recorded in the matrix

    Node(int[][] scoreBoard, int[] teams){
        row_ = row;
        column_ = column;
    }
}

node* matchMatrix= nullptr;

matchMatrix = std::vector<Node> PlayMatrix;

//needs the latest match Id, red teams and blue teams
void updateMatrix(unsigned short matchId, std::vector<[unsigned short]> scoreBoard){
    //get the teams at matchId
    unsigned short redIndex = floor(0.5 * matchId + 1);
    unsigned short blueIndex = redIndex + 1;
}

