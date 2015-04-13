package COMMAND.cajamenor
{
	import BUSINESS.CajaMenorDelegate;
	
	import EVENT.CajaMenorEvent;
	
	import MODEL.CajaMenorMl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class ListarCajaMenorCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
		
		public function execute(event:CairngormEvent):void
		{
			new CajaMenorDelegate(this).listarCajaMenor((event as CajaMenorEvent).cajaMenorVo);
		}
		
		public function result(data:Object):void
		{
			
			CajaMenorMl.getInstance().listCajamenor = data.result;

		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}




