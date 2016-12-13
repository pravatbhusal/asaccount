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
			if (EmailTxTReg.text != "" && PassTxTReg.text != "" && UserTxTReg.text != "")
			{
				SendForm();
			}
			else
			{
				RegisterTxT.text = "Please fill in all of the fields!";

			}

		}
		//Send the variables over to PHP then MySQL
		public function SendForm()
		{
			//PHP variable 
			var phpVars:URLVariables = new URLVariables();
			//Send email, password, and username
			phpVars.Email = EmailTxTReg.text;
			phpVars.Password = PassTxTReg.text;
			phpVars.Username = UserTxTReg.text;
			//URL to send the variables to
			var urlRequest:URLRequest = new URLRequest("URL_FOR_REGISTER.php");
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
			RegisterTxT.text = "" + e.target.data.Result_Message;
		}
		
	}

}
