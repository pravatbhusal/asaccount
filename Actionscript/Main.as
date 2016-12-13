package 
{
	import flash.display.*; 
	import flash.events.*;
	import flash.net.*;

	public class Main extends MovieClip
	{
    // Variables
	  public static var Email:String = "";
    public static var Username:String = "";
    public static var Password:String = "";
    public static var Silver:Integer = 0;
    
		// Main class constructor
		public function Main()
		{
        new LoginAndLoad();
        new Register();
		}

	}

}
