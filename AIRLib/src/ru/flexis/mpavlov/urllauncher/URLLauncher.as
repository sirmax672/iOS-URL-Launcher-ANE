package ru.flexis.mpavlov.urllauncher
{
	import flash.external.ExtensionContext;

	public class URLLauncher
	{
	
		private var _extensionContext:ExtensionContext;
		
		public function URLLauncher()
		{
			_extensionContext = ExtensionContext.createExtensionContext( "ru.flexis.mpavlov.urllauncher", "main" );
		}
		
		public function launchUrl(url:String):int
		{
			return _extensionContext.call( 'LaunchURL', url ) as int;
		}
	
	}
}