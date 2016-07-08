package 
{
	import flash.display.*; 
	import flash.events.*;
	import flash.net.*;
	
	public class Register
	{

		public function Register()
		{
			RegisterBTN.addEventListener(MouseEvent.MOUSE_DOWN, CheckForm);
		}
		public function CheckForm(E:MouseEvent):void
		{
			if (FantasyDreams.FDLog.EmailTxTReg.text != "" && FantasyDreams.FDLog.PassTxTReg.text != "" && FantasyDreams.FDLog.UserTxTReg.text != "")
			{
				SendForm();
			}
			else
			{
				FantasyDreams.FDLog.RegisterTxT.text = "Please fill in all of the fields!";

			}

		}
		public function SendForm()
		{

			var phpVars:URLVariables = new URLVariables();

			phpVars.Email = FantasyDreams.FDLog.EmailTxTReg.text;
			phpVars.Password = FantasyDreams.FDLog.PassTxTReg.text;
			phpVars.Username = FantasyDreams.FDLog.UserTxTReg.text;

			var urlRequest:URLRequest = new URLRequest("http://virtuedev.site88.net/Databases/FantasyDreams/LoginRegister/Register.php");

			urlRequest.method = URLRequestMethod.POST;

			urlRequest.data = phpVars;
			var urlLoader:URLLoader = new URLLoader();
			urlLoader.dataFormat = URLLoaderDataFormat.VARIABLES;

			urlLoader.addEventListener(Event.COMPLETE, Results);

			urlLoader.load(urlRequest);

		}
		public function Results(E:Event): void 
		{
			FantasyDreams.FDLog.RegisterTxT.text = "" + e.target.data.Result_Message;
		}
		
	}

}
