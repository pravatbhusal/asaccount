package 
{
	import flash.display.*; 
	import flash.events.*;
	import flash.net.*;
	
	public class Register
	{
	
		//Register constructor
		public function Register()
		{
			RegisterBTN.addEventListener(MouseEvent.MOUSE_DOWN, CheckForm);
		}
		public function CheckForm(E:MouseEvent):void
		{
			//If the text boxes are not blank
			if (FantasyDreams.FDLog.EmailTxTReg.text != "" && FantasyDreams.FDLog.PassTxTReg.text != "" && FantasyDreams.FDLog.UserTxTReg.text != "")
			{
				SendForm();
			}
			else
			{
				FantasyDreams.FDLog.RegisterTxT.text = "Please fill in all of the fields!";

			}

		}
		//Send the variables over to PHP then MySQL
		public function SendForm()
		{
			//PHP variable 
			var phpVars:URLVariables = new URLVariables();
			//Send email, password, and username
			phpVars.Email = FantasyDreams.FDLog.EmailTxTReg.text;
			phpVars.Password = FantasyDreams.FDLog.PassTxTReg.text;
			phpVars.Username = FantasyDreams.FDLog.UserTxTReg.text;
			//URL to send the variables to
			var urlRequest:URLRequest = new URLRequest("http://virtuedev.site88.net/Databases/FantasyDreams/LoginRegister/Register.php");
			//We post our variables
			urlRequest.method = URLRequestMethod.POST;
			//Now send the variables over!
			urlRequest.data = phpVars;
			var urlLoader:URLLoader = new URLLoader();
			urlLoader.dataFormat = URLLoaderDataFormat.VARIABLES;
			//See if we successfuly sent the variables over to PHP
			urlLoader.addEventListener(Event.COMPLETE, Results);
	
			urlLoader.load(urlRequest);

		}
		//Give a result message that either says if it worked or not.
		public function Results(E:Event): void 
		{
			FantasyDreams.FDLog.RegisterTxT.text = "" + e.target.data.Result_Message;
		}
		
	}

}
