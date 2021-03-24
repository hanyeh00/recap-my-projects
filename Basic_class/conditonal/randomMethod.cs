using System;
					
public class Program
{
	public static void Main()
	{
	 var rand=new Random();
		for (int i=0; i<10 ;i++)
		Console.WriteLine(rand.Next(1,3));
		
	}
}
