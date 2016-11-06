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
			FantasyDreams.FDLog.LoginBTN.addEventListener(MouseEvent.MOUSE_DOWN, CheckLogin);
		}
		//Process the login when we click the button
		public function ProcessLogin()
		{
			//Declare and initialize a load variable
			var phpVars:URLVariables = new URLVariables();
			//Load from this URL
			var phpFileRequest:URLRequest = new URLRequest("http://virtuedev.site88.net/Databases/FantasyDreams/LoginRegister/LoginAndLoad.php");
			//We will be posting the variables
			phpFileRequest.method = URLRequestMethod.POST;

			phpFileRequest.data = phpVars;
			//Receive the variables!
			var phpLoader:URLLoader = new URLLoader();
			phpLoader.dataFormat = URLLoaderDataFormat.VARIABLES;
			//Send to PHP that we are connected.
			phpVars.Connection = "Connected";
			phpVars.Email = FantasyDreams.FDLog.EmailTxT.text;
			phpVars.Password = FantasyDreams.FDLog.PassTxT.text;
			//Now make an event listener saying that we have successfuly received the variables and loaded them.
			phpLoader.addEventListener(Event.COMPLETE, Results);
			phpLoader.load(phpFileRequest);
		}
		//Check the login username and password
		public function CheckLogin(E:MouseEvent):void
		{
			//If the text boxes are not blank
			if (FantasyDreams.FDLog.EmailTxT.text == "" || FantasyDreams.FDLog.PassTxT.text == "")
			{

				if (FantasyDreams.FDLog.EmailTxT.text == "")
				{
					FantasyDreams.FDLog.EmailTxT.text = "Email is blank.";
				}
				if (FantasyDreams.FDLog.PassTxT.text == "")
				{
					FantasyDreams.FDLog.PassTxT.text = "Password is blank.";
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
			FantasyDreams.Email = FantasyDreams.FDLog.EmailTxT.text;
			//Check if we can login
			FantasyDreams.FDLog.LoginDetailsTxT.text = "" + E.target.data.CheckLogin;
			
			//If the login details contain errors
			if (FantasyDreams.FDLog.LoginDetailsTxT.text == "The login details do not match our records!")
			{
				trace("The login details do not match our records!");
			} //Else we login!
			else
			{
				FantasyDreams.FDLog.LoginDetailsTxT.text = "Logging in...";
			}

		}

	}

}
