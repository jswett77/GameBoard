//Adding a comment to code
Board theBoard;
BoardItem item1;
TriangleItem tItem1;
Sticky stickGuy;

//Layer background data
int[][] layer = {
  {0, 255, 125, 9, 10, 15, 24, 45, 150}, 
  {100, 100, 100, 9}, 
  {0, 0, 0}, 
  {#8F2CB7}
};

//Setup our gameboard
void setup() {
  size(1600, 1200);
  int cellSize = 100;
  int boardCols = (width-100)/cellSize;
  int boardRows = (height-100)/cellSize;
  theBoard = new Board(50, 50, boardRows, boardCols, cellSize);

  item1 = new BoardItem(2, 5);
  int[][] item1Data = 
   {{-1, 0, -1}, 
    { 0, 0, 0}, 
    {-1, 0, -1}};
  item1.setData(item1Data);
  //theBoard.addItem( item1 );
  theBoard.addLayer( layer );
  
  tItem1 = new TriangleItem(1,1);
  tItem1.setData(item1Data);
  theBoard.addItem(tItem1);
  
  stickGuy = new Sticky(7,7);
  theBoard.addItem(stickGuy);
}

void draw() {
  background(255);
  theBoard.show();
}

void mousePressed() {
  //mouseX, mouseY
  println(theBoard.getCell(mouseX, mouseY));
  //
  item1.updateCol(1);
}

void keyPressed() {
  
  if (key == CODED) {
    if (keyCode == UP) {
      doUpKey();
    } else if (keyCode == DOWN) {
      doDownKey();
    } else if (keyCode == LEFT) {
      doLeftKey();
    } else if (keyCode == RIGHT) {
      doRightKey();
    }
  }
}

void doUpKey(){
  item1.updateRow(-1);
  tItem1.updateRow(-1);
}

void doDownKey(){
  item1.updateRow(1);
  tItem1.updateRow(1);
}

void doLeftKey(){
  item1.updateCol(-1);
  tItem1.updateCol(-1);
}

void doRightKey(){
  item1.updateCol(1);
  tItem1.updateCol(1);
}
