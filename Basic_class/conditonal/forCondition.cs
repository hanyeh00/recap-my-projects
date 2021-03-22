using system;
namespace condition
{
    public class Program
    {
        public static void Main(string[] args)
        {
           // refrence type memory address is copied
            var array=new int[10] {0,1,2,3,4,5,6,7,8,9};
            for (int i=1; i<10;i++)
            {
                if( array[i]%2==0 )
                    
                Console.WriteLine(array[i]);
   
        }
    }
}
