package 
{
	import flash.display.*; 
	import flash.events.*;
	import flash.net.*;
	
	//Login & Load variables from MySQL
	public class LoginAndLoad
	{
		
		//Constructor
		public function LoginAndLoad()
		{
			LoginBTN.addEventListener(MouseEvent.MOUSE_DOWN, CheckLogin);
		}
		//Process the login when we click the button
		public function ProcessLogin()
		{
			//Declare and initialize a load variable
			var phpVars:URLVariables = new URLVariables();
			//Load from this URL
			var phpFileRequest:URLRequest = new URLRequest("URL_FOR_LOGINANDLOAD.php");
			//We will be posting the variables
			phpFileRequest.method = URLRequestMethod.POST;

			phpFileRequest.data = phpVars;
			//Receive the variables!
			var phpLoader:URLLoader = new URLLoader();
			phpLoader.dataFormat = URLLoaderDataFormat.VARIABLES;
			//Send to PHP that we are connected.
			phpVars.Connection = "Connected";
			phpVars.Email = EmailTxT.text;
			phpVars.Password = PassTxT.text;
			phpVars.Silver = Main.Silver
			//Now make an event listener saying that we have successfuly received the variables and loaded them.
			phpLoader.addEventListener(Event.COMPLETE, Results);
			phpLoader.load(phpFileRequest);
		}
		//Check the login username and password
		public function CheckLogin(E:MouseEvent):void
		{
			//If the text boxes are not blank
			if (EmailTxT.text == "" || PassTxT.text == "")
			{

				if (EmailTxT.text == "")
				{
					EmailTxT.text = "Email is blank.";
				}
				if (PassTxT.text == "")
				{
					PassTxT.text = "Password is blank.";
				}
			}
			else
			{
				ProcessLogin();
			}
		}
		//Load the variables from MySQL
		public function Results(E:Event):void
		{
			//Receive the Email variable
			Main.Email = EmailTxT.text;
			//Check if we can login
			LoginDetailsTxT.text = "" + E.target.data.CheckLogin;
			
			//If the login details contain errors
			if (LoginDetailsTxT.text == "The login details do not match our records!")
			{
				trace("The login details do not match our records!");
			} //Else we login!
			else
			{
				LoginDetailsTxT.text = "Logging in...";
			}

		}

	}

}
