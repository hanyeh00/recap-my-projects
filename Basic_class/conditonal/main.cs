 using system;
 namespace conditional
 
 {
    public class Program
    {
     static void main()
     {
       var season=Season.Spring;
       switch (season)
       {
       case Season.Spring:
       case Season.summer:
        Console.WriteLine(" you got promotion");
        break;
         
         
         
          case Season.Autumn:
       Console.WriteLine(" It is Autumn");
        break;
          case Season.Winter:
       Console.WriteLine(" It is winter");
        break;
           default:
           Console.WriteLine(" I don't understand the season");
        break;
           
        
       }
       
    
    }
 
 }
