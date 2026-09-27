//Checking the duplicates in row
bool rowsValid(List<List<int>> grid, int n){
    for(int i=0;i<n;i++){
        Set<int> inRow={};
        for(int j=0;j<n;j++){
            if(grid[i][j]==0) continue;
            if(inRow.contains(grid[i][j])){
                return false;
            }else{
                inRow.add(grid[i][j]);
            }
        }
    }
    return true; 
}

//Checking the duplicates in col
bool colsValid(List<List<int>> grid, int n){
    for(int i=0;i<n; i++){
        Set<int> inCol={};  
        for(int j=0;j<n;j++){
            if(grid[j][i]==0) continue;
            if(inCol.contains(grid[j][i])){
                return false;
            }else{
                inCol.add(grid[j][i]);
            }
        }
    }
    return true;
}



//Checking the duplicates in box
bool boxesValid(List<List<int>> grid, int n){
    int boxRows=1;
    int boxCols=n;
    for(int i=2;i<=n;i++){
        if(n%i==0){
            boxRows=i;
            boxCols=n~/i;
        }
        if(boxRows<=boxCols) break;
    }
    
    for(int startRow=0;startRow<n;startRow+=boxRows){
        for(int startCol=0;startCol<n;startCol+=boxCols){

            Set<int> inBox={};
            for(int i=startRow;i<startRow+boxRows;i++){
                for(int j=startCol;j<startCol+boxCols;j++){
                    if(grid[i][j]==0) continue;
                    if(inBox.contains(grid[i][j])){
                    return false;
                    }else{
                        inBox.add(grid[i][j]);
                    } 
                }
            }
        }
    }
    return true;
}

bool isValid(List<List<int>> grid){
    int n=grid.length;
    return rowsValid(grid,n) && colsValid(grid, n) && boxesValid(grid, n);
}