package COMMAND.roles
{
	import BUSINESS.AllDelegate;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class AsignarRolesToUsusCommand implements ICommand, IResponder
	{
		public function execute(event:CairngormEvent):void
		{
			new AllDelegate(this).asignarRolToUsuario();
		}
		
		public function result(data:Object):void
		{
			Alert.show("Funciono");
		}
		
		public function fault(info:Object):void
		{
			Alert.show("er2 de cx");
		}
		
	}
}