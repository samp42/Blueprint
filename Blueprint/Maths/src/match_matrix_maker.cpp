//
//  match_matrix_maker.cpp
//  MatrixOp
//
//  Created by Samuel Proulx on 2020-02-13.
//  Copyright © 2020 Blueprint Technologies. All rights reserved.
//

#include <stdio.h>
#include <vector>
#include <math.h>

unsigned short findIndex(unsigned short item, unsigned short itemsList[]){
    int i = 0;
    
    while(itemsList[i] != item){
        i++;
    }
    
    return i;
}

//Node for the sparse matrix representation of the match matrix
struct Node{
    unsigned short row_; //row = match, (red=even, blue=odd)
    unsigned short column_; //team in numerical ascending order
    bool played_; //by default 1 because if node is created, team has played
    
    Node(unsigned short match, unsigned short team, unsigned short teamsAtEvent[]){
        row_ = floor(0.5 * match - 1);
        column_ = findIndex(team, teamsAtEvent);
        played_ = 1;
    }
};

//Node* matchMatrix = nullptr;

//resizable match matrix
std::vector<Node> matchMatrix;

//update new match function
void updateNewMatch(){
    //push_back red teams
    {
        //red 1
        //matchMatrix.push_back(Node());
        //red 2
        //matchMatrix.push_back(Node());
        //red 3
        //matchMatrix.push_back(Node());
    }
    //push_back blue teams
    {
        //blue 1
        //matchMatrix.push_back(Node());
        //blue 2
        //matchMatrix.push_back(Node());
        //blue 3
        //matchMatrix.push_back(Node());
    }
}
