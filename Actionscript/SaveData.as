package 
{
	import flash.display.*; 
	import flash.events.*;
	import flash.net.*;

	public class SaveData
	{

		public function SaveData()
		{

			var SavePHPVars:URLVariables = new URLVariables();

			SavePHPVars.Email = FantasyDreams.Email;
			SavePHPVars.Silver = FantasyDreams.Silver;

			var SaveURLRequest:URLRequest = new URLRequest("http://virtuedev.site88.net/Databases/FantasyDreams/LoginRegister/SaveData.php");

			SaveURLRequest.method = URLRequestMethod.POST;

			SaveURLRequest.data = SavePHPVars;

			var SaveURLLoader:URLLoader = new URLLoader();
			SaveURLLoader.dataFormat = URLLoaderDataFormat.VARIABLES;

			SaveURLLoader.load(SaveURLRequest);

		}

	}

}
