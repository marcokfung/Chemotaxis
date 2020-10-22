Bacteria[] bill;

 void setup()   
 {     
    size(300,300);
   bill = new Bacteria[10];
    for (int i=0; i < bill.length; i++){
     bill[i] =  new Bacteria();
    }
 }   
 
 void draw()   
 {    
   background(0,0,0);
   for (int i=0; i < bill.length; i++){
   bill[i].show();
   bill[i].move();
   }
 }  
 class Bacteria    
 { 
   int myX, myY, myClr;
  Bacteria() 
  {   
    myX = 50;
    myY = 50;
    myClr = (int)(Math.random()*255);
  }
  
  void move(){
    myX = myX + (int) (Math.random()*3)-1;
    myY = myY + (int) (Math.random()*3)-1;
    
    if(myClr>127.5){
     myX = myX + (int)(Math.random()*4)-1;
     myY = myY + (int)(Math.random()*4)-1;
    }    
   else if(myClr >= 127.5){
     myX = myX - (int)(Math.random()*4);
     myY = myY - (int)(Math.random()*4);
   }
   
   if(myX>=300){
     myX = myX - 20;
    }    
   else if (myX<=0){
     myX = myX + 20;
   }
   if(myY>=300){
     myY = myY - 20;
    }
    else if (myY<=0){
     myY = myY + 20; 
    }
  }
  
  void show(){
    noStroke();
    fill(myClr, myClr - 50, myClr +50);
    ellipse(myX, myY, 50, 50);
  }
  
  
 }    
