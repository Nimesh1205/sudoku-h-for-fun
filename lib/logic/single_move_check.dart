import 'package:hsudoku/logic/sudoku_validator.dart';

bool isMoveValid(List<List<int>> grid, int row, int col, int n){
  List<int> dim=boxDimensions(n);
  int boxRows = dim[0];
  int boxCols = dim[1];
  int isRow=0;
  int isCol=0;
  int isBox=0;
  
  int value=grid[row][col];
  for(int i=0;i<n;i++){
    if(grid[row][i]==value) isRow++;
  }
  for(int j=0;j<n;j++){
    if(grid[j][col]==value) isCol++;
  }

  int startRow=(row~/boxRows)*boxRows;
  int startCol=(col~/boxCols)*boxCols;
  for(int i=startRow;i<startRow+boxRows;i++){
    for(int j=startCol;j<startCol+boxCols;j++){
      if(grid[i][j]==value) isBox++;
    }
  }
  if(isBox>1 || isRow>1 || isCol>1) return false;
  return true;
}