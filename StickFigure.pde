public class Sticky extends BoardItem {
   
  Sticky(int rowAt, int colAt){
    super(rowAt, colAt);
  }
  
  public void show(int xAt, int yAt, int cellSize){
    pushMatrix();
    translate(xAt,yAt);
      //legs
      line( cellSize/3, cellSize, cellSize/2, 2*cellSize/3);
      line( 2*cellSize/3, cellSize, cellSize/2, 2*cellSize/3);
      
      //body
      line( cellSize/2, 2*cellSize/3, cellSize/2, cellSize/4);
      
      //head
      ellipse(cellSize/2, cellSize/4, .0010*cellSize*frameCount,.001*cellSize*frameCount);
      
      //arms
      line( cellSize/4, cellSize/2, 3*cellSize/4, cellSize/2);
    popMatrix();
  }
  
}
