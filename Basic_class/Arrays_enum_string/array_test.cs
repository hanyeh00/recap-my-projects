using system;
namespace csharpArray
{
public class Program
{
static void main(string[] args)
{


// arrays
int[] numbers= new int[4];
numbers[0]=1;
numbers[1]=2;
numbers[2]=3;
numbers[3]=4;
Console.WriteLine(numbers);

// csharp start from zero index
var number2=new int[3] {1,2,3}; // index 0 1 2---- len=3
Console.WriteLine(number2);
var flags=new bool[3];
flags[0]=true;
Console.WriteLine(flags);

//stringFormat
string name="John";
string list=string.join("," ,number2);
// strings are immutable
var firstname="john";
var lastname="smith";
var fullname=firstname+" "+lastname;
var myfullname=string.Format("my full name is {0}  {1}", firstname, lastname);
var names=new string[3]{"John","Jack","Mary"};
var formatName=string.Join(",", names);
Console.WriteLine(formatName);

//verbatim string=== @
//
string filename1 = @"c:\documents\files\u0066.txt";
string filename2 = "c:\\documents\\files\\u0066.txt";

Console.WriteLine(filename1);
Console.WriteLine(filename2);



// enums:
enum Color
{
    Red,
    Green,
    Blue
}


}
}
}
