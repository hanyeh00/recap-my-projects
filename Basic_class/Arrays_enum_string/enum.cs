using System;
					
public class Program
{
		public enum season // defining set of variable or constant
		{
			spring ,
			summer,
			fall=5,
			Winter
		}
	public static void Main()
	{
	  var method= season.Winter;
		Console.WriteLine((int)(method)); // we should write int before variable.
          var methodId=5;
		Console.WriteLine((season) methodId);
	}
}
