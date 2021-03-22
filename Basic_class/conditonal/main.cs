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
       Console.WriteLine(" It is spring");
        break;
          case Season.summer:
       Console.WriteLine(" It is summer");
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
