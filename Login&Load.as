package 
{
	import flash.display.*; 
	import flash.events.*;
	import flash.net.*;
	
	public class LoginAndLoad
	{

		public function LoginAndLoad()
		{
			FantasyDreams.FDLog.LoginBTN.addEventListener(MouseEvent.MOUSE_DOWN, CheckLogin);
		}
		public function ProcessLogin()
		{
			var phpVars:URLVariables = new URLVariables();

			var phpFileRequest:URLRequest = new URLRequest("http://virtuedev.site88.net/Databases/FantasyDreams/LoginRegister/LoginAndLoad.php");

			phpFileRequest.method = URLRequestMethod.POST;

			phpFileRequest.data = phpVars;

			var phpLoader:URLLoader = new URLLoader();
			phpLoader.dataFormat = URLLoaderDataFormat.VARIABLES;

			phpVars.Connection = "Connected";
			phpVars.Email = FantasyDreams.FDLog.EmailTxT.text;
			phpVars.Password = FantasyDreams.FDLog.PassTxT.text;
			
			phpLoader.addEventListener(Event.COMPLETE, Results);
			phpLoader.load(phpFileRequest);
		}
		public function CheckLogin(E:MouseEvent):void
		{
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
		public function Results(E:Event):void
		{
			FantasyDreams.Email = FantasyDreams.FDLog.EmailTxT.text;

			FantasyDreams.FDLog.LoginDetailsTxT.text = "" + E.target.data.CheckLogin;


			if (FantasyDreams.FDLog.LoginDetailsTxT.text == "The login details do not match our records!")
			{
				trace("The login details do not match our records!");
			}
			else
			{
				FantasyDreams.FDLog.LoginDetailsTxT.text = "Logging in...";
			}

		}

	}

}
