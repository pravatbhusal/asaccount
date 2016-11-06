package 
{
	import flash.display.*; 
	import flash.events.*;
	import flash.net.*;

	public class SaveData
	{
	
		//SaveData constructor
		public function SaveData()
		{
			//PHP Variable sender
			var SavePHPVars:URLVariables = new URLVariables();
			//get the email and silver of the player
			SavePHPVars.Email = FantasyDreams.Email;
			SavePHPVars.Silver = FantasyDreams.Silver;
			//The URL of the PHP file
			var SaveURLRequest:URLRequest = new URLRequest("http://virtuedev.site88.net/Databases/FantasyDreams/LoginRegister/SaveData.php");
			//We use the post method!
			SaveURLRequest.method = URLRequestMethod.POST;
			
			//Now set the data to PHP variables
			SaveURLRequest.data = SavePHPVars;
			//Now load the PHP url and send variables
			var SaveURLLoader:URLLoader = new URLLoader();
			SaveURLLoader.dataFormat = URLLoaderDataFormat.VARIABLES;

			SaveURLLoader.load(SaveURLRequest);

		}

	}

}
