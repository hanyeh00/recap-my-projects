using system ;
namespace whileLoop
{
public class Program
    {
        public static void Main(string[] args)
        {
           // refrence type memory address is copied
            var array=new int[10] {0,1,2,3,4,5,6,7,8,9};
            
            while(true)
            {
                
                    
                Console.WriteLine("enter your name");
                var input=Console.ReadLine();
                if( string.IsNullOrWhiteSpace(input))
                    break;
            }
   }
        }
    }
}
