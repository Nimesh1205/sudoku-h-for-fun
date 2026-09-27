class SudokuBoard{
  List<List<int>> grid;
  late List<List<bool>> isGiven;

  SudokuBoard(this.grid){
    isGiven=grid.map((row)=>row.map((cell)=>cell!=0).toList()).toList();
  }

  bool isFull()=>grid.every((row)=>row.every((cell)=>cell!=0));
}